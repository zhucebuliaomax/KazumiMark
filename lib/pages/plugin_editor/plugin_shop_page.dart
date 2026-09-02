import 'package:flutter/material.dart';
import 'package:kazumi/bean/appbar/sys_app_bar.dart';
import 'package:kazumi/pages/plugin_editor/plugin_catalog_view.dart';
import 'package:kazumi/plugins/plugins_controller.dart';
import 'package:kazumi/l10n/l10n.dart';

class PluginShopPage extends StatefulWidget {
  const PluginShopPage({
    super.key,
    required this.controller,
  });

  final PluginsController controller;

  @override
  State<PluginShopPage> createState() => _PluginShopPageState();
}

class _PluginShopPageState extends State<PluginShopPage> {
  final catalogKey = GlobalKey<PluginCatalogViewState>();
  bool sortByName = false;

  void _toggleSort() {
    setState(() {
      sortByName = !sortByName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SysAppBar(
        title: Text(context.l10n.ruleRepository),
        actions: [
          IconButton(
              onPressed: _toggleSort,
              tooltip: sortByName
                  ? context.l10n.sortByName
                  : context.l10n.sortByUpdateTime,
              icon: Icon(sortByName ? Icons.sort_by_alpha : Icons.access_time)),
          IconButton(
              onPressed: () => catalogKey.currentState?.refresh(),
              tooltip: context.l10n.refreshRuleList,
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: PluginCatalogView(
        key: catalogKey,
        controller: widget.controller,
        sort:
            sortByName ? PluginCatalogSort.name : PluginCatalogSort.lastUpdate,
        errorMessage: context.l10n.ruleRepositoryAccessFailedPlayful,
      ),
    );
  }
}
