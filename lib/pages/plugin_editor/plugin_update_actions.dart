import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/plugins/plugins_controller.dart';

Future<void> updateAllPluginsWithFeedback(
  PluginsController controller, {
  required bool ensureCatalog,
}) async {
  KazumiDialog.showToast(message: currentL10n.updating);
  try {
    final result = await controller.tryUpdateAllPlugin(
      ensureCatalog: ensureCatalog,
    );
    KazumiDialog.showToast(message: _batchUpdateMessage(result));
  } catch (_) {
    KazumiDialog.showToast(message: currentL10n.updateRulesFailed);
  }
}

Future<PluginUpdateResult> updatePluginWithFeedback(
  PluginsController controller,
  String name, {
  required bool installing,
}) async {
  KazumiDialog.showToast(
    message: installing ? currentL10n.importing : currentL10n.updating,
  );
  late final PluginUpdateResult result;
  try {
    result = await controller.tryUpdatePluginByName(name);
  } catch (_) {
    KazumiDialog.showToast(message: currentL10n.saveRuleFailed);
    return PluginUpdateResult.failed;
  }
  final message = switch (result) {
    PluginUpdateResult.updated =>
      installing ? currentL10n.importSucceeded : currentL10n.updateSucceeded,
    PluginUpdateResult.requiresNewerClient =>
      currentL10n.ruleRequiresNewerClient,
    PluginUpdateResult.failed =>
      installing ? currentL10n.importRuleFailed : currentL10n.updateRulesFailed,
    PluginUpdateResult.notNewer => currentL10n.remoteRuleNotNewer,
  };
  KazumiDialog.showToast(message: message);
  return result;
}

String _batchUpdateMessage(PluginBatchUpdateResult result) {
  if (result.hasNoCandidates) {
    return currentL10n.noRulesToUpdate;
  }
  if (result.failed == 0 &&
      result.requiresNewerClient == 0 &&
      result.notNewer == 0) {
    return currentL10n.updateSuccessCount(result.updated);
  }

  final parts = <String>[currentL10n.successCount(result.updated)];
  if (result.requiresNewerClient > 0) {
    parts.add(currentL10n.incompatibleCount(result.requiresNewerClient));
  }
  if (result.notNewer > 0) {
    parts.add(currentL10n.skippedCount(result.notNewer));
  }
  if (result.failed > 0) {
    parts.add(currentL10n.failedCount(result.failed));
  }
  return currentL10n.updateSummary(parts.join(', '));
}
