import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/services/platform/secure_bookmark_service.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/utils/file_system.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:file_picker/file_picker.dart';
import 'package:kazumi/l10n/l10n.dart';

class DownloadSettingsPage extends StatefulWidget {
  const DownloadSettingsPage({super.key});

  @override
  State<DownloadSettingsPage> createState() => _DownloadSettingsPageState();
}

class _DownloadSettingsPageState extends State<DownloadSettingsPage> {
  late int parallelEpisodes;
  late int parallelSegments;
  late bool downloadDanmaku;
  String downloadDirectory = '';
  String defaultDownloadDirectory = '';
  bool isSelectingDirectory = false;

  @override
  void initState() {
    super.initState();
    parallelEpisodes =
        GStorage.getSetting(SettingsKeys.downloadParallelEpisodes);
    parallelSegments =
        GStorage.getSetting(SettingsKeys.downloadParallelSegments);
    downloadDanmaku = GStorage.getSetting(SettingsKeys.downloadDanmaku);
    downloadDirectory =
        GStorage.getSetting(SettingsKeys.downloadDirectory).trim();
    _loadDefaultDownloadDirectory();
  }

  bool get _canPickDirectory => supportsCustomDownloadDirectory;

  bool get _hasCustomDirectory =>
      _canPickDirectory && downloadDirectory.isNotEmpty;

  String get _effectiveDownloadDirectory =>
      _hasCustomDirectory ? downloadDirectory : defaultDownloadDirectory;

  Future<void> _loadDefaultDownloadDirectory() async {
    final directory = await getDefaultDownloadDirectory();
    if (!mounted) return;
    setState(() {
      defaultDownloadDirectory = directory;
    });
  }

  Future<void> _selectDownloadDirectory() async {
    final l10n = context.l10n;
    if (!_canPickDirectory) {
      KazumiDialog.showToast(message: l10n.directorySelectionUnsupported);
      return;
    }
    if (isSelectingDirectory) return;

    setState(() => isSelectingDirectory = true);
    try {
      final effectiveDirectory = _effectiveDownloadDirectory;
      final initialDirectory = effectiveDirectory.isNotEmpty &&
              await Directory(effectiveDirectory).exists()
          ? effectiveDirectory
          : null;
      final selectedPath = await FilePicker.platform.getDirectoryPath(
        dialogTitle: l10n.selectDownloadLocation,
        initialDirectory: initialDirectory,
      );
      if (selectedPath == null || selectedPath.isEmpty) return;

      await ensureDirectoryWritable(selectedPath);
      if (!await SecureBookmarkService.persist(selectedPath)) {
        KazumiDialog.showToast(message: l10n.directoryAccessFailed);
        return;
      }
      await GStorage.putSetting(
        SettingsKeys.downloadDirectory,
        selectedPath,
      );
      if (mounted) {
        setState(() => downloadDirectory = selectedPath);
      }
      KazumiDialog.showToast(message: l10n.downloadLocationUpdated);
    } on FileSystemException catch (e) {
      KazumiDialog.showToast(message: l10n.directoryWriteFailed(e.message));
    } catch (e) {
      KazumiDialog.showToast(
          message: l10n.downloadLocationSelectionFailed('$e'));
    } finally {
      if (mounted) {
        setState(() => isSelectingDirectory = false);
      }
    }
  }

  Future<void> _resetDownloadDirectory() async {
    final message = context.l10n.defaultDownloadLocationRestored;
    await SecureBookmarkService.clear();
    await GStorage.putSetting(SettingsKeys.downloadDirectory, '');
    if (mounted) {
      setState(() => downloadDirectory = '');
    }
    KazumiDialog.showToast(message: message);
  }

  @override
  Widget build(BuildContext context) {
    return SettingsDetailScaffold(
      title: Text(context.l10n.downloadSettings),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text(context.l10n.concurrencySettings),
            tiles: [
              SettingsSliderTile(
                leading: Icons.video_library_rounded,
                title: Text(context.l10n.parallelEpisodes),
                description: Text(context.l10n.parallelEpisodesDescription),
                value: parallelEpisodes.toDouble(),
                min: 1,
                max: 5,
                divisions: 4,
                valueLabel: context.l10n.episodeCount(parallelEpisodes),
                onChanged: (value) {
                  setState(() => parallelEpisodes = value.toInt());
                  GStorage.putSetting(
                    SettingsKeys.downloadParallelEpisodes,
                    parallelEpisodes,
                  );
                },
              ),
              SettingsSliderTile(
                leading: Icons.call_split_rounded,
                title: Text(context.l10n.parallelSegments),
                description: Text(context.l10n.parallelSegmentsDescription),
                value: parallelSegments.toDouble(),
                min: 1,
                max: 10,
                divisions: 9,
                valueLabel: context.l10n.itemCount(parallelSegments),
                onChanged: (value) {
                  setState(() => parallelSegments = value.toInt());
                  GStorage.putSetting(
                    SettingsKeys.downloadParallelSegments,
                    parallelSegments,
                  );
                },
              ),
            ],
          ),
          SettingsSection(
            title: Text(context.l10n.cacheSettings),
            tiles: [
              SettingsTile(
                leading: Icons.folder_rounded,
                title: Text(context.l10n.downloadLocation),
                description: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _effectiveDownloadDirectory.isEmpty
                          ? context.l10n.readingDefaultLocation
                          : _effectiveDownloadDirectory,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _hasCustomDirectory
                          ? context.l10n.customDownloadLocationDescription
                          : context.l10n.defaultDownloadLocationDescription,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodySmall?.color,
                      ),
                    ),
                  ],
                ),
                trailing: isSelectingDirectory
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : _hasCustomDirectory
                        ? IconButton(
                            tooltip: context.l10n.restoreDefault,
                            icon: const Icon(Icons.restore_rounded),
                            onPressed: _resetDownloadDirectory,
                          )
                        : null,
                onPressed: (_) => _selectDownloadDirectory(),
              ),
              SettingsTile.switchTile(
                leading: Icons.subtitles_rounded,
                onToggle: (value) {
                  setState(() => downloadDanmaku = value ?? !downloadDanmaku);
                  GStorage.putSetting(
                      SettingsKeys.downloadDanmaku, downloadDanmaku);
                },
                title: Text(context.l10n.cacheDanmaku),
                description: Text(context.l10n.cacheDanmakuDescription),
                initialValue: downloadDanmaku,
              ),
            ],
          ),
          SettingsSection(
            title: Text(context.l10n.information),
            tiles: [
              SettingsTile(
                leading: Icons.info_outline_rounded,
                title: Text(context.l10n.aboutConcurrency),
                description: Text(context.l10n.concurrencyExplanation),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
