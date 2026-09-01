import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/bean/appbar/sys_app_bar.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:kazumi/pages/about/about_page.dart';
import 'package:kazumi/pages/my/my_controller.dart';
import 'package:kazumi/pages/plugin_editor/plugin_view_page.dart';
import 'package:kazumi/pages/settings/danmaku/danmaku_settings.dart';
import 'package:kazumi/pages/settings/download_settings.dart';
import 'package:kazumi/pages/settings/interface_settings.dart';
import 'package:kazumi/pages/settings/keyboard_settings.dart';
import 'package:kazumi/pages/settings/player_settings.dart';
import 'package:kazumi/pages/settings/proxy/proxy_settings_page.dart';
import 'package:kazumi/pages/settings/theme_settings_page.dart';
import 'package:kazumi/pages/webdav_editor/webdav_setting.dart';
import 'package:kazumi/plugins/plugins_controller.dart';
import 'package:kazumi/utils/constants.dart';
import 'package:kazumi/l10n/app_localizations.dart';
import 'package:kazumi/l10n/l10n.dart';

class _SettingsCategory {
  const _SettingsCategory({
    required this.id,
    required this.icon,
    required this.builder,
  });

  final String id;
  final IconData icon;
  final WidgetBuilder builder;
}

class _SettingsGroup {
  const _SettingsGroup({required this.id, required this.categories});

  final String id;
  final List<_SettingsCategory> categories;
}

final List<_SettingsGroup> _settingsGroups = [
  _SettingsGroup(
    id: 'playback',
    categories: [
      _SettingsCategory(
        id: 'player',
        icon: Icons.display_settings_rounded,
        builder: (_) => const PlayerSettingsPage(),
      ),
      _SettingsCategory(
        id: 'danmaku',
        icon: Icons.subtitles_rounded,
        builder: (_) => const DanmakuSettingsPage(),
      ),
      _SettingsCategory(
        id: 'keyboard',
        icon: Icons.keyboard_rounded,
        builder: (_) => const KeyboardSettingsPage(),
      ),
    ],
  ),
  _SettingsGroup(
    id: 'resources',
    categories: [
      _SettingsCategory(
        id: 'plugin',
        icon: Icons.extension_rounded,
        builder: (_) => PluginViewPage(controller: inject<PluginsController>()),
      ),
      _SettingsCategory(
        id: 'download',
        icon: Icons.downloading_rounded,
        builder: (_) => const DownloadSettingsPage(),
      ),
    ],
  ),
  _SettingsGroup(
    id: 'application',
    categories: [
      _SettingsCategory(
        id: 'theme',
        icon: Icons.palette_rounded,
        builder: (_) => const ThemeSettingsPage(),
      ),
      _SettingsCategory(
        id: 'interface',
        icon: Icons.pages_rounded,
        builder: (_) => const InterfaceSettingsPage(),
      ),
      _SettingsCategory(
        id: 'sync',
        icon: Icons.cloud_rounded,
        builder: (_) => const WebDavSettingsPage(),
      ),
      _SettingsCategory(
        id: 'proxy',
        icon: Icons.vpn_key_rounded,
        builder: (_) => const ProxySettingsPage(),
      ),
    ],
  ),
  _SettingsGroup(
    id: 'other',
    categories: [
      _SettingsCategory(
        id: 'about',
        icon: Icons.info_outline_rounded,
        builder: (_) => AboutPage(controller: inject<MyController>()),
      ),
    ],
  ),
];

String _localizedGroupTitle(AppLocalizations l10n, String id) => switch (id) {
      'playback' => l10n.settingsGroupPlayback,
      'resources' => l10n.settingsGroupResources,
      'application' => l10n.settingsGroupApplication,
      _ => l10n.settingsGroupOther,
    };

String _localizedCategoryLabel(AppLocalizations l10n, String id) =>
    switch (id) {
      'player' => l10n.playerSettings,
      'danmaku' => l10n.danmakuSettings,
      'keyboard' => l10n.controlSettings,
      'plugin' => l10n.pluginManagement,
      'download' => l10n.downloadSettings,
      'theme' => l10n.appearanceSettings,
      'interface' => l10n.interfaceSettings,
      'sync' => l10n.syncSettings,
      'proxy' => l10n.proxySettings,
      _ => l10n.about,
    };

String _localizedCategoryDescription(AppLocalizations l10n, String id) =>
    switch (id) {
      'player' => l10n.playerSettingsDescription,
      'danmaku' => l10n.danmakuSettingsDescription,
      'keyboard' => l10n.controlSettingsDescription,
      'plugin' => l10n.pluginManagementDescription,
      'download' => l10n.downloadSettingsDescription,
      'theme' => l10n.appearanceSettingsDescription,
      'interface' => l10n.interfaceSettingsDescription,
      'sync' => l10n.syncSettingsDescription,
      'proxy' => l10n.proxySettingsDescription,
      _ => l10n.aboutDescription,
    };

/// Adds and removes pages without a transition, so a breakpoint reflow is
/// carried by the rail animation alone instead of two animations at once.
class _InstantTransitionDelegate extends TransitionDelegate<dynamic> {
  const _InstantTransitionDelegate();

  @override
  Iterable<RouteTransitionRecord> resolve({
    required List<RouteTransitionRecord> newPageRouteHistory,
    required Map<RouteTransitionRecord?, RouteTransitionRecord>
        locationToExitingPageRoute,
    required Map<RouteTransitionRecord?, List<RouteTransitionRecord>>
        pageRouteToPagelessRoutes,
  }) {
    final results = <RouteTransitionRecord>[];
    for (final pageRoute in newPageRouteHistory) {
      if (pageRoute.isWaitingForEnteringDecision) {
        pageRoute.markForAdd();
      }
      results.add(pageRoute);
    }
    for (final exitingPageRoute in locationToExitingPageRoute.values) {
      if (exitingPageRoute.isWaitingForExitingDecision) {
        exitingPageRoute.markForComplete();
        final pagelessRoutes = pageRouteToPagelessRoutes[exitingPageRoute];
        if (pagelessRoutes != null) {
          for (final pagelessRoute in pagelessRoutes) {
            pagelessRoute.markForComplete();
          }
        }
      }
      results.add(exitingPageRoute);
    }
    return results;
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  static const Duration _paneMotion = Duration(milliseconds: 250);
  static const double _railWidth = 280;
  static const ValueKey<String> _listPageKey =
      ValueKey<String>('settings-list');

  /// Single-pane detail rides a real route so it keeps the platform transition.
  final GlobalKey<NavigatorState> _detailNavigatorKey =
      GlobalKey<NavigatorState>();

  /// Single source of truth for the layout: it picks the right pane's content
  /// in two-pane mode and whether the detail route is pushed in single-pane,
  /// so resizing across the breakpoint reflows without losing the selection.
  _SettingsCategory? _selected;

  bool? _lastTwoPane;

  bool _useTwoPane(BuildContext context) {
    return MediaQuery.orientationOf(context) == Orientation.landscape &&
        MediaQuery.sizeOf(context).width > LayoutBreakpoint.compact['width']!;
  }

  void _backToCategoryList() {
    setState(() => _selected = null);
  }

  @override
  Widget build(BuildContext context) {
    final twoPane = _useTwoPane(context);
    // Falls back to the first category without writing it back, otherwise
    // narrowing the window would jump into a category never picked.
    final shown = _selected ?? _settingsGroups.first.categories.first;
    final detail = twoPane ? null : _selected;
    final layoutChanged = _lastTwoPane != null && _lastTwoPane != twoPane;
    _lastTwoPane = twoPane;

    return NavigatorPopHandler(
      onPopWithResult: (_) => _detailNavigatorKey.currentState?.maybePop(),
      child: Navigator(
        key: _detailNavigatorKey,
        transitionDelegate: layoutChanged
            ? const _InstantTransitionDelegate()
            : const DefaultTransitionDelegate<dynamic>(),
        onDidRemovePage: (page) {
          // A layout-driven removal keeps the selection for the right pane.
          if (page.key != _listPageKey && !_useTwoPane(context)) {
            _backToCategoryList();
          }
        },
        pages: [
          MaterialPage(
            key: _listPageKey,
            child: _listScaffold(context, twoPane, shown),
          ),
          if (detail != null)
            MaterialPage(
              key: ValueKey<String>('settings-detail:${detail.id}'),
              child: SettingsPaneScope(
                embedded: false,
                onBack: _backToCategoryList,
                child: Builder(builder: detail.builder),
              ),
            ),
        ],
      ),
    );
  }

  Widget _listScaffold(
    BuildContext context,
    bool twoPane,
    _SettingsCategory shown,
  ) {
    return Scaffold(
      appBar: SysAppBar(
        title: Text(context.l10n.settings),
        // First route of the nested Navigator, so back must pop the outer one.
        leading: IconButton(
          onPressed: () => context.maybePop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        top: false,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRect(
              child: AnimatedAlign(
                duration: _paneMotion,
                curve: Curves.easeInOutCubic,
                alignment: Alignment.centerLeft,
                widthFactor: twoPane ? 1 : 0,
                child: SizedBox(
                  width: _railWidth,
                  child: _rail(context, shown),
                ),
              ),
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: _paneMotion,
                switchInCurve: Curves.easeInOutCubic,
                switchOutCurve: Curves.easeInOutCubic,
                child: twoPane
                    ? _detailPane(context, shown)
                    : KeyedSubtree(
                        key: const ValueKey<String>('categories'),
                        child: _singlePaneBody(context),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Left unfilled so the pane shares the page surface; a fill would either
  /// match the cards inside it or stack another tone step onto them.
  Widget _detailPane(BuildContext context, _SettingsCategory shown) {
    return Padding(
      key: ValueKey<String>('pane:${shown.id}'),
      padding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
      child: _withoutScrollbar(
        context,
        SettingsPaneScope(
          embedded: true,
          child: Builder(builder: shown.builder),
        ),
      ),
    );
  }

  /// Scoped so the lists inside each embedded settings page are covered too.
  Widget _withoutScrollbar(BuildContext context, Widget child) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: child,
    );
  }

  Widget _rail(BuildContext context, _SettingsCategory shown) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return _withoutScrollbar(
      context,
      ListView(
        padding: const EdgeInsets.fromLTRB(4, 0, 0, 12),
        children: [
          for (final group in _settingsGroups) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 16, 28, 8),
              child: Text(
                _localizedGroupTitle(context.l10n, group.id),
                style:
                    textTheme.titleSmall?.copyWith(color: colorScheme.primary),
              ),
            ),
            for (final category in group.categories)
              _RailDestination(
                category: category,
                selected: category.id == shown.id,
                onTap: () => setState(() => _selected = category),
              ),
          ],
        ],
      ),
    );
  }

  Widget _singlePaneBody(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        for (final group in _settingsGroups) ...[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              _localizedGroupTitle(context.l10n, group.id),
              style: textTheme.titleSmall?.copyWith(color: colorScheme.primary),
            ),
          ),
          SettingsSplitGroup(
            children: [
              for (final category in group.categories)
                SettingsCategoryTile(
                  icon: category.icon,
                  title: _localizedCategoryLabel(context.l10n, category.id),
                  description:
                      _localizedCategoryDescription(context.l10n, category.id),
                  onTap: () => setState(() => _selected = category),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

class _RailDestination extends StatelessWidget {
  const _RailDestination({
    required this.category,
    required this.selected,
    required this.onTap,
  });

  final _SettingsCategory category;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final foreground = selected
        ? colorScheme.onSecondaryContainer
        : colorScheme.onSurfaceVariant;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: Material(
        color: selected ? colorScheme.secondaryContainer : Colors.transparent,
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 56,
            child: Row(
              children: [
                const SizedBox(width: 16),
                Icon(category.icon, size: 24, color: foreground),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    _localizedCategoryLabel(context.l10n, category.id),
                    style: textTheme.labelLarge?.copyWith(color: foreground),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
