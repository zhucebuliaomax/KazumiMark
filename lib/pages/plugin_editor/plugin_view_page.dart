import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/bean/card/rule_card.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/plugins/plugins.dart';
import 'package:kazumi/plugins/plugins_controller.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/pages/plugin_editor/plugin_update_actions.dart';
import 'package:kazumi/services/logging/logger.dart';
import 'package:kazumi/services/plugin/plugin_import_parser.dart';
import 'package:kazumi/utils/encoding.dart';

class PluginViewPage extends StatefulWidget {
  const PluginViewPage({
    super.key,
    required this.controller,
  });

  final PluginsController controller;

  @override
  State<PluginViewPage> createState() => _PluginViewPageState();
}

class _PluginViewPageState extends State<PluginViewPage> {
  PluginsController get pluginsController => widget.controller;

  // 是否处于多选模式
  bool isMultiSelectMode = false;

  // 已选中的规则名称集合
  final Set<String> selectedNames = {};

  Future<void> _handleUpdate() async {
    await updateAllPluginsWithFeedback(
      pluginsController,
      ensureCatalog: true,
    );
    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _handleReorder(int oldIndex, int newIndex) async {
    try {
      await pluginsController.onReorder(oldIndex, newIndex);
    } catch (_) {
      KazumiDialog.showToast(message: currentL10n.saveRuleOrderFailed);
    }
  }

  void _handleAdd() {
    KazumiDialog.show(builder: (context) {
      return AlertDialog(
        content: SingleChildScrollView(
          // 使用可滚动的SingleChildScrollView包装Column
          child: Column(
            mainAxisSize: MainAxisSize.min, // 设置为MainAxisSize.min以减小高度
            children: [
              ListTile(
                title: Text(currentL10n.createRule),
                onTap: () {
                  KazumiDialog.dismiss();
                  context.pushNamed('/settings/plugin/editor',
                      arguments: Plugin.fromTemplate());
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text(currentL10n.importFromRuleRepository),
                onTap: () {
                  KazumiDialog.dismiss();
                  context.pushNamed('/settings/plugin/shop',
                      arguments: Plugin.fromTemplate());
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text(currentL10n.importFromClipboard),
                onTap: () async {
                  KazumiDialog.dismiss();
                  final clipboard =
                      await Clipboard.getData(Clipboard.kTextPlain);
                  if (!mounted) return;
                  _showInputDialog(initialValue: clipboard?.text ?? '');
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text(currentL10n.importFromFile),
                onTap: () {
                  KazumiDialog.dismiss();
                  _importFromFile();
                },
              ),
            ],
          ),
        ),
      );
    });
  }

  void _showInputDialog({String initialValue = ''}) {
    var pluginText = initialValue;
    KazumiDialog.show(
      builder: (context) {
        return AlertDialog(
          title: Text(currentL10n.importRulesFromClipboard),
          content: SizedBox(
            width: 520,
            child: TextFormField(
              initialValue: initialValue,
              onChanged: (value) => pluginText = value,
              minLines: 4,
              maxLines: 10,
              decoration: InputDecoration(
                hintText: currentL10n.ruleImportInputHint,
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => KazumiDialog.dismiss(),
              child: Text(
                currentL10n.cancel,
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            TextButton(
              onPressed: () => _importFromText(
                pluginText,
                dismissDialog: true,
              ),
              child: Text(currentL10n.importAction),
            ),
          ],
        );
      },
    );
  }

  Future<void> _importFromFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: const ['json'],
        withData: true,
      );
      if (result == null) return;
      final file = result.files.single;
      final bytes = file.bytes ??
          (file.path == null ? null : await File(file.path!).readAsBytes());
      if (bytes == null) {
        throw FileSystemException(currentL10n.selectedFileUnreadable);
      }
      await _importFromText(utf8.decode(bytes));
    } catch (error, stackTrace) {
      KazumiLogger().e(
        'Plugin: failed to import rules from file',
        error: error,
        stackTrace: stackTrace,
      );
      KazumiDialog.showToast(
        message: currentL10n.readRuleFileFailed(error.toString()),
      );
    }
  }

  Future<void> _importFromText(
    String text, {
    bool dismissDialog = false,
  }) async {
    final result = PluginImportParser.parse(text);
    if (result.plugins.isEmpty) {
      if (dismissDialog) KazumiDialog.dismiss();
      KazumiDialog.showToast(
        message: result.failures.isEmpty
            ? currentL10n.noRulesToImport
            : result.failures.first,
      );
      return;
    }

    if (dismissDialog) KazumiDialog.dismiss();
    try {
      await pluginsController.updatePlugins(result.plugins);
      KazumiDialog.showToast(
        message: currentL10n.ruleImportSummary(
          result.plugins.length,
          result.duplicateCount,
          result.failureCount,
        ),
      );
    } catch (error, stackTrace) {
      KazumiLogger().e(
        'Plugin: failed to persist imported rules',
        error: error,
        stackTrace: stackTrace,
      );
      KazumiDialog.showToast(
        message: currentL10n.saveImportedRulesFailed(error.toString()),
      );
    }
  }

  void onBackPressed(BuildContext context) {
    if (KazumiDialog.observer.hasKazumiDialog) {
      KazumiDialog.dismiss();
      return;
    }
  }

  @override
  void initState() {
    super.initState();
    unawaited(_loadPluginUpdateStatus());
  }

  Future<void> _loadPluginUpdateStatus() async {
    try {
      await pluginsController.ensurePluginCatalog();
      if (mounted) {
        setState(() {});
      }
    } catch (_) {
      KazumiDialog.showToast(message: currentL10n.checkRuleUpdatesFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !isMultiSelectMode,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (didPop) {
          return;
        }
        if (isMultiSelectMode) {
          setState(() {
            isMultiSelectMode = false;
            selectedNames.clear();
          });
          return;
        }
        onBackPressed(context);
      },
      child: SettingsDetailScaffold(
        title: isMultiSelectMode
            ? Text(currentL10n.selectedItemCount(selectedNames.length))
            : Text(currentL10n.pluginManagement),
        leading: isMultiSelectMode
            ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    isMultiSelectMode = false;
                    selectedNames.clear();
                  });
                },
              )
            : null,
        actions: [
          if (isMultiSelectMode) ...[
            IconButton(
              onPressed: selectedNames.isEmpty
                  ? null
                  : () {
                      KazumiDialog.show(
                        builder: (context) => AlertDialog(
                          title: Text(currentL10n.deleteRules),
                          content: Text(
                              currentL10n.deleteSelectedRulesConfirmation(
                                  selectedNames.length)),
                          actions: [
                            TextButton(
                              onPressed: () => KazumiDialog.dismiss(),
                              child: Text(
                                currentL10n.cancel,
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.outline),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                try {
                                  await pluginsController
                                      .removePlugins(selectedNames);
                                } catch (_) {
                                  KazumiDialog.showToast(
                                    message: currentL10n.deleteRuleFailed,
                                  );
                                  return;
                                }
                                if (!mounted) return;
                                setState(() {
                                  isMultiSelectMode = false;
                                  selectedNames.clear();
                                });
                                KazumiDialog.dismiss();
                              },
                              child: Text(currentL10n.delete),
                            ),
                          ],
                        ),
                      );
                    },
              icon: const Icon(Icons.delete),
            ),
          ] else ...[
            IconButton(
              onPressed: () {
                _handleUpdate();
              },
              tooltip: currentL10n.updateAll,
              icon: const Icon(Icons.update),
            ),
            IconButton(
              onPressed: () {
                _handleAdd();
              },
              tooltip: currentL10n.addRule,
              icon: const Icon(Icons.add),
            )
          ],
        ],
        body: Observer(builder: (context) {
          return pluginsController.pluginList.isEmpty
              ? Center(
                  child: Text(currentL10n.noAvailableRules),
                )
              : Builder(builder: (context) {
                  final colorScheme = Theme.of(context).colorScheme;
                  return ReorderableListView.builder(
                      buildDefaultDragHandles: false,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      proxyDecorator: (child, index, animation) {
                        return Material(
                          elevation: 0,
                          color: Colors.transparent,
                          child: child,
                        );
                      },
                      onReorderItem: (int oldIndex, int newIndex) {
                        unawaited(_handleReorder(oldIndex, newIndex));
                      },
                      itemCount: pluginsController.pluginList.length,
                      itemBuilder: (context, index) {
                        var plugin = pluginsController.pluginList[index];
                        bool canUpdate =
                            pluginsController.pluginUpdateStatus(plugin) ==
                                PluginUpdateAvailability.updatable;
                        return RuleCard(
                          key: ObjectKey(plugin),
                          title: plugin.name,
                          selected: selectedNames.contains(plugin.name),
                          trailing: pluginCardTrailing(index),
                          onLongPress: () {
                            if (!isMultiSelectMode) {
                              setState(() {
                                isMultiSelectMode = true;
                                selectedNames.add(plugin.name);
                              });
                            }
                          },
                          onTap: () {
                            if (isMultiSelectMode) {
                              setState(() {
                                if (selectedNames.contains(plugin.name)) {
                                  selectedNames.remove(plugin.name);
                                  if (selectedNames.isEmpty) {
                                    isMultiSelectMode = false;
                                  }
                                } else {
                                  selectedNames.add(plugin.name);
                                }
                              });
                            }
                          },
                          tags: [
                            RuleTag(
                              label: plugin.version,
                              background: colorScheme.secondaryContainer,
                              foreground: colorScheme.onSecondaryContainer,
                            ),
                            if (canUpdate)
                              RuleTag(
                                label: currentL10n.updateAvailable,
                                background: colorScheme.errorContainer,
                                foreground: colorScheme.onErrorContainer,
                              ),
                            if (pluginsController.validityTracker
                                .isSearchValid(plugin.name))
                              RuleTag(
                                label: currentL10n.searchValid,
                                background: colorScheme.tertiaryContainer,
                                foreground: colorScheme.onTertiaryContainer,
                              ),
                          ],
                        );
                      });
                });
        }),
      ),
    );
  }

  Widget pluginCardTrailing(int index) {
    final plugin = pluginsController.pluginList[index];
    return Row(mainAxisSize: MainAxisSize.min, children: [
      isMultiSelectMode
          ? Checkbox(
              value: selectedNames.contains(plugin.name),
              onChanged: (bool? value) {
                setState(() {
                  if (value == true) {
                    selectedNames.add(plugin.name);
                  } else {
                    selectedNames.remove(plugin.name);
                    if (selectedNames.isEmpty) {
                      isMultiSelectMode = false;
                    }
                  }
                });
              },
            )
          : popupMenuButton(index),
      ReorderableDragStartListener(
        index: index,
        child: const Icon(Icons.drag_handle), // 单独的拖拽按钮
      )
    ]);
  }

  Widget popupMenuButton(int index) {
    final plugin = pluginsController.pluginList[index];
    return MenuAnchor(
      consumeOutsideTap: true,
      builder:
          (BuildContext context, MenuController controller, Widget? child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: const Icon(Icons.more_vert),
        );
      },
      menuChildren: [
        MenuItemButton(
          requestFocusOnHover: false,
          onPressed: () async {
            try {
              await pluginsController.ensurePluginCatalog();
              if (mounted) {
                setState(() {});
              }
            } catch (_) {
              KazumiDialog.showToast(
                  message: currentL10n.checkRuleUpdatesFailed);
              return;
            }
            final state = pluginsController.pluginUpdateStatus(plugin);
            switch (state) {
              case PluginUpdateAvailability.unknown:
                KazumiDialog.showToast(
                  message: currentL10n.ruleUpdateStatusUnavailable,
                );
              case PluginUpdateAvailability.notInCatalog:
                KazumiDialog.showToast(
                    message: currentL10n.ruleNotInRepository);
              case PluginUpdateAvailability.latest:
                KazumiDialog.showToast(message: currentL10n.ruleAlreadyLatest);
              case PluginUpdateAvailability.updatable:
                await updatePluginWithFeedback(
                  pluginsController,
                  plugin.name,
                  installing: false,
                );
            }
          },
          child: Container(
            height: 48,
            constraints: BoxConstraints(minWidth: 112),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.update_rounded),
                  SizedBox(width: 8),
                  Text(currentL10n.update),
                ],
              ),
            ),
          ),
        ),
        MenuItemButton(
          requestFocusOnHover: false,
          onPressed: () {
            context.pushNamed('/settings/plugin/editor', arguments: plugin);
          },
          child: Container(
            height: 48,
            constraints: BoxConstraints(minWidth: 112),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(width: 8),
                  Text(currentL10n.edit),
                ],
              ),
            ),
          ),
        ),
        MenuItemButton(
          requestFocusOnHover: false,
          onPressed: () {
            context.pushNamed('/settings/plugin/test', arguments: plugin);
          },
          child: Container(
            height: 48,
            constraints: BoxConstraints(minWidth: 112),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.bug_report_outlined),
                  SizedBox(width: 8),
                  Text(currentL10n.test),
                ],
              ),
            ),
          ),
        ),
        MenuItemButton(
          requestFocusOnHover: false,
          onPressed: () {
            KazumiDialog.show(builder: (context) {
              return AlertDialog(
                title: Text(currentL10n.ruleLink),
                content: SelectableText(
                  jsonToKazumiBase64(json
                      .encode(pluginsController.pluginList[index].toJson())),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(
                    onPressed: () => KazumiDialog.dismiss(),
                    child: Text(
                      currentL10n.cancel,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(
                        text: jsonToKazumiBase64(
                          json.encode(
                            pluginsController.pluginList[index].toJson(),
                          ),
                        ),
                      ));
                      KazumiDialog.dismiss();
                    },
                    child: Text(currentL10n.copyToClipboard),
                  ),
                ],
              );
            });
          },
          child: Container(
            height: 48,
            constraints: BoxConstraints(minWidth: 112),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.share),
                  SizedBox(width: 8),
                  Text(currentL10n.share),
                ],
              ),
            ),
          ),
        ),
        MenuItemButton(
          requestFocusOnHover: false,
          onPressed: () async {
            try {
              await pluginsController.removePlugin(plugin);
            } catch (_) {
              KazumiDialog.showToast(message: currentL10n.deleteRuleFailed);
            }
          },
          child: Container(
            height: 48,
            constraints: BoxConstraints(minWidth: 112),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.delete),
                  SizedBox(width: 8),
                  Text(currentL10n.delete),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
