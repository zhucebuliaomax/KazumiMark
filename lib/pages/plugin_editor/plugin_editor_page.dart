import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/plugins/plugins.dart';
import 'package:kazumi/plugins/api_rule_config.dart';
import 'package:kazumi/plugins/anti_crawler_config.dart';
import 'package:kazumi/plugins/plugins_controller.dart';
import 'package:kazumi/bean/appbar/sys_app_bar.dart';
import 'package:kazumi/pages/plugin_editor/editor_form_widgets.dart';
import 'package:kazumi/request/config/api_endpoints.dart';
import 'package:kazumi/services/plugin/api_rule_engine.dart';
import 'package:kazumi/l10n/l10n.dart';

abstract final class _RuleEditorText {
  static String get pageTitle => currentL10n.ruleEditorPageTitle;
  static String get testRule => currentL10n.ruleEditorTestRule;
  static String get save => currentL10n.save;

  static const modeXPath = 'XPath';
  static const modeApi = 'API';
  static const methodGet = 'GET';
  static const methodPost = 'POST';
  static String get bodyTypeNone => currentL10n.none;
  static const bodyTypeJson = 'JSON';
  static String get bodyTypeForm => currentL10n.ruleEditorForm;
  static String get formatNested => currentL10n.ruleEditorNestedJson;
  static String get formatDelimited => currentL10n.ruleEditorDelimitedString;

  static String get legacyParser => currentL10n.ruleEditorLegacyParser;
  static String get legacyParserDesc => currentL10n.ruleEditorLegacyParserDesc;
  static String get adBlocker => currentL10n.ruleEditorAdBlocker;
  static String get adBlockerDesc => currentL10n.ruleEditorAdBlockerDesc;

  static String get antiCrawlerEnable =>
      currentL10n.ruleEditorAntiCrawlerEnable;
  static String get antiCrawlerEnableDesc =>
      currentL10n.ruleEditorAntiCrawlerEnableDesc;
  static String get captchaTypeLabel => currentL10n.ruleEditorCaptchaType;
  static String get captchaTypeImage => currentL10n.ruleEditorImageCaptcha;
  static String get captchaTypeAutoClick => currentL10n.ruleEditorAutoClick;
  static String get captchaTypeScript => currentL10n.ruleEditorCustomScript;
  static String get captchaTypeImageDesc =>
      currentL10n.ruleEditorImageCaptchaDesc;
  static String get captchaTypeAutoClickDesc =>
      currentL10n.ruleEditorAutoClickDesc;
  static String get captchaTypeScriptDesc =>
      currentL10n.ruleEditorCustomScriptDesc;
  static String get captchaTypeUnknownDesc =>
      currentL10n.ruleEditorUnknownCaptchaType;
  static String get captchaDetectTypeLabel =>
      currentL10n.ruleEditorCaptchaDetectionMethod;
  static String get captchaDetectTypeDesc =>
      currentL10n.ruleEditorCaptchaDetectionMethodDesc;
  static String get captchaDetectText => currentL10n.text;
  static String get captchaDetectRegex => currentL10n.ruleEditorRegex;
  static String get captchaDetectValueHintText =>
      currentL10n.ruleEditorCaptchaDetectionTextHint;
  static String get captchaDetectValueHintRegex =>
      currentL10n.ruleEditorCaptchaDetectionRegexHint;
  static const captchaDetectValueHintXPath = '//button[@id="verify"]';
  static const captchaImageHint = '//img[@class="captcha"]';
  static const captchaInputHint = '//input[@name="captcha"]';
  static const captchaButtonHint = '//button[@type="submit"]';
  static const captchaScriptHint =
      'KazumiCaptcha.log("ready"); KazumiCaptcha.done();';

  static String get sectionBasic => currentL10n.ruleEditorBasicInfo;
  static String get sectionBasicDesc => currentL10n.ruleEditorBasicInfoDesc;
  static String get sectionSearch => currentL10n.ruleEditorSearchRules;
  static String get sectionSearchDesc => currentL10n.ruleEditorSearchRulesDesc;
  static String get sectionChapter => currentL10n.ruleEditorEpisodeRules;
  static String get sectionChapterDesc =>
      currentL10n.ruleEditorEpisodeRulesDesc;
  static String get advancedOptions => currentL10n.advancedOptions;
  static String get advancedOptionsDesc =>
      currentL10n.ruleEditorAdvancedOptionsDesc;
  static String get groupBehavior => currentL10n.ruleEditorBehaviorSettings;
  static String get groupNetwork => currentL10n.ruleEditorNetworkSettings;
  static String get groupAntiCrawler => currentL10n.ruleEditorAntiCrawler;

  static String get ruleName => currentL10n.ruleEditorRuleName;
  static String get ruleVersion => currentL10n.ruleEditorRuleVersion;
  static String get baseUrl => currentL10n.ruleEditorBaseUrl;
  static String get searchRuleType => currentL10n.ruleEditorSearchRuleType;
  static String get chapterRuleType => currentL10n.ruleEditorEpisodeRuleType;

  static String get searchUrl => currentL10n.ruleEditorSearchUrl;
  static String get searchListXPath => currentL10n.ruleEditorSearchListXPath;
  static String get itemNameXPath => currentL10n.ruleEditorItemNameXPath;
  static String get itemLinkXPath => currentL10n.ruleEditorItemLinkXPath;
  static String get roadListXPath => currentL10n.ruleEditorRoadListXPath;
  static String get episodeListXPath => currentL10n.ruleEditorEpisodeListXPath;

  static String get searchMethod => currentL10n.ruleEditorSearchMethod;
  static String get searchRequestUrl => currentL10n.ruleEditorSearchRequestUrl;
  static String get searchHeaders => currentL10n.ruleEditorSearchHeaders;
  static String get searchQuery => currentL10n.ruleEditorSearchQuery;
  static String get searchBodyType => currentL10n.ruleEditorSearchBodyType;
  static String get searchBody => currentL10n.ruleEditorSearchBody;
  static String get searchListPath => currentL10n.ruleEditorSearchListPath;
  static String get itemNamePath => currentL10n.ruleEditorItemNamePath;
  static String get itemSourcePath => currentL10n.ruleEditorItemSourcePath;

  static String get chapterMethod => currentL10n.ruleEditorEpisodeMethod;
  static String get chapterRequestUrl =>
      currentL10n.ruleEditorEpisodeRequestUrl;
  static String get chapterHeaders => currentL10n.ruleEditorEpisodeHeaders;
  static String get chapterQuery => currentL10n.ruleEditorEpisodeQuery;
  static String get chapterBodyType => currentL10n.ruleEditorEpisodeBodyType;
  static String get chapterBody => currentL10n.ruleEditorEpisodeBody;
  static String get chapterResponseFormat =>
      currentL10n.ruleEditorEpisodeResponseFormat;
  static String get roadListPath => currentL10n.ruleEditorRoadListPath;
  static String get roadNamePath => currentL10n.ruleEditorRoadNamePath;
  static String get episodeListPath => currentL10n.ruleEditorEpisodeListPath;
  static String get episodeNamePath => currentL10n.ruleEditorEpisodeNamePath;
  static String get playbackEntryPath =>
      currentL10n.ruleEditorPlaybackEntryPath;
  static String get playbackEntryPathHelper =>
      currentL10n.ruleEditorPlaybackEntryPathHelper;
  static String get roadNamesPath => currentL10n.ruleEditorRoadNamesPath;
  static String get roadEpisodesPath => currentL10n.ruleEditorRoadEpisodesPath;
  static String get roadSeparator => currentL10n.ruleEditorRoadSeparator;
  static String get episodeSeparator => currentL10n.ruleEditorEpisodeSeparator;
  static String get fieldSeparator => currentL10n.ruleEditorFieldSeparator;
  static String get responseVariables =>
      currentL10n.ruleEditorResponseVariables;
  static String get playPageUrl => currentL10n.ruleEditorPlayPageUrl;
  static String get playPageUrlHelper =>
      currentL10n.ruleEditorPlayPageUrlHelper;
  static String get playPageQuery => currentL10n.ruleEditorPlayPageQuery;
  static String get playPageQueryHelper =>
      currentL10n.ruleEditorPlayPageQueryHelper;

  static String get userAgent => currentL10n.ruleEditorUserAgent;
  static String get userAgentHelper =>
      currentL10n.ruleEditorPlayerDownloaderOnly;
  static String get referer => currentL10n.ruleEditorReferer;
  static String get refererHelper => currentL10n.ruleEditorPlayerDownloaderOnly;

  static String get captchaDetectValue =>
      currentL10n.ruleEditorCaptchaDetectionValue;
  static String get captchaDetectValueHelper =>
      currentL10n.ruleEditorCaptchaDetectionValueHelper;
  static String get captchaImage => currentL10n.ruleEditorCaptchaImageXPath;
  static String get captchaImageHelper =>
      currentL10n.ruleEditorCaptchaImageXPathHelper;
  static String get captchaInput => currentL10n.ruleEditorCaptchaInputXPath;
  static String get captchaInputHelper =>
      currentL10n.ruleEditorCaptchaInputXPathHelper;
  static String get captchaSubmitButton =>
      currentL10n.ruleEditorCaptchaSubmitXPath;
  static String get captchaSubmitButtonHelper =>
      currentL10n.ruleEditorCaptchaSubmitXPathHelper;
  static String get verifyButton => currentL10n.ruleEditorVerifyButtonXPath;
  static String get verifyButtonHelper =>
      currentL10n.ruleEditorVerifyButtonXPathHelper;
  static String get captchaScript => currentL10n.ruleEditorCaptchaScript;
  static String get captchaScriptHelper =>
      currentL10n.ruleEditorCaptchaScriptHelper;
}

class PluginEditorPage extends StatefulWidget {
  const PluginEditorPage({
    super.key,
    required this.plugin,
    required this.controller,
  });

  final Plugin plugin;
  final PluginsController controller;

  @override
  State<PluginEditorPage> createState() => _PluginEditorPageState();
}

class _PluginEditorPageState extends State<PluginEditorPage> {
  PluginsController get pluginsController => widget.controller;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController versionController = TextEditingController();
  final TextEditingController userAgentController = TextEditingController();
  final TextEditingController baseURLController = TextEditingController();
  final TextEditingController searchURLController = TextEditingController();
  final TextEditingController searchListController = TextEditingController();
  final TextEditingController searchNameController = TextEditingController();
  final TextEditingController searchResultController = TextEditingController();
  final TextEditingController chapterRoadsController = TextEditingController();
  final TextEditingController chapterResultController = TextEditingController();
  final TextEditingController refererController = TextEditingController();
  final TextEditingController searchApiURLController = TextEditingController();
  final TextEditingController searchApiHeadersController =
      TextEditingController();
  final TextEditingController searchApiQueryController =
      TextEditingController();
  final TextEditingController searchApiBodyController = TextEditingController();
  final TextEditingController searchApiListPathController =
      TextEditingController();
  final TextEditingController searchApiNamePathController =
      TextEditingController();
  final TextEditingController searchApiSourcePathController =
      TextEditingController();
  final TextEditingController chapterApiURLController = TextEditingController();
  final TextEditingController chapterApiHeadersController =
      TextEditingController();
  final TextEditingController chapterApiQueryController =
      TextEditingController();
  final TextEditingController chapterApiBodyController =
      TextEditingController();
  final TextEditingController chapterApiRoadsPathController =
      TextEditingController();
  final TextEditingController chapterApiRoadNamePathController =
      TextEditingController();
  final TextEditingController chapterApiEpisodesPathController =
      TextEditingController();
  final TextEditingController chapterApiEpisodeNamePathController =
      TextEditingController();
  final TextEditingController chapterApiEpisodeURLPathController =
      TextEditingController();
  final TextEditingController chapterApiRoadNamesPathController =
      TextEditingController();
  final TextEditingController chapterApiRoadEpisodesPathController =
      TextEditingController();
  final TextEditingController chapterApiRoadSeparatorController =
      TextEditingController();
  final TextEditingController chapterApiEpisodeSeparatorController =
      TextEditingController();
  final TextEditingController chapterApiFieldSeparatorController =
      TextEditingController();
  final TextEditingController chapterApiVariablesController =
      TextEditingController();
  final TextEditingController chapterApiPageURLController =
      TextEditingController();
  final TextEditingController chapterApiPageQueryController =
      TextEditingController();
  String searchMode = RuleMode.xpath;
  String chapterMode = RuleMode.xpath;
  String searchApiMethod = 'GET';
  String searchApiBodyType = ApiBodyType.none;
  String chapterApiMethod = 'GET';
  String chapterApiBodyType = ApiBodyType.none;
  String chapterApiFormat = ApiChapterFormat.nested;
  // Legacy schema values retained on save but no longer exposed as settings.
  late String _api;
  late String _type;
  late bool _muliSources;
  late bool _useWebview;
  late bool _useNativePlayer;
  bool usePost = false;
  bool useLegacyParser = false;
  bool adBlocker = false;

  // AntiCrawler fields
  final TextEditingController captchaImageController = TextEditingController();
  final TextEditingController captchaInputController = TextEditingController();
  final TextEditingController captchaButtonController = TextEditingController();
  final TextEditingController captchaDetectValueController =
      TextEditingController();
  final TextEditingController captchaScriptController = TextEditingController();
  bool antiCrawlerEnabled = false;
  int captchaType = CaptchaType.imageCaptcha;
  int captchaDetectType = CaptchaDetectType.xpath;

  static const List<ButtonSegment<String>> _ruleModeSegments = [
    ButtonSegment(
      value: RuleMode.xpath,
      label: Text(_RuleEditorText.modeXPath),
    ),
    ButtonSegment(value: RuleMode.api, label: Text(_RuleEditorText.modeApi)),
  ];

  static const List<ButtonSegment<String>> _methodSegments = [
    ButtonSegment(value: 'GET', label: Text(_RuleEditorText.methodGet)),
    ButtonSegment(value: 'POST', label: Text(_RuleEditorText.methodPost)),
  ];

  static List<ButtonSegment<String>> get _bodyTypeSegments => [
        ButtonSegment(
          value: ApiBodyType.none,
          label: Text(_RuleEditorText.bodyTypeNone),
        ),
        ButtonSegment(
          value: ApiBodyType.json,
          label: Text(_RuleEditorText.bodyTypeJson),
        ),
        ButtonSegment(
          value: ApiBodyType.form,
          label: Text(_RuleEditorText.bodyTypeForm),
        ),
      ];

  @override
  void initState() {
    super.initState();
    final Plugin plugin = widget.plugin;
    _api = plugin.api;
    _type = plugin.type;
    nameController.text = plugin.name;
    versionController.text = plugin.version;
    userAgentController.text = plugin.userAgent;
    baseURLController.text = plugin.baseUrl;
    searchURLController.text = plugin.searchURL;
    searchListController.text = plugin.searchList;
    searchNameController.text = plugin.searchName;
    searchResultController.text = plugin.searchResult;
    chapterRoadsController.text = plugin.chapterRoads;
    chapterResultController.text = plugin.chapterResult;
    refererController.text = plugin.referer;
    searchMode = plugin.searchMode;
    chapterMode = plugin.chapterMode;
    searchApiMethod = plugin.searchApiConfig.request.method;
    searchApiBodyType = plugin.searchApiConfig.request.bodyType;
    searchApiURLController.text = plugin.searchApiConfig.request.url;
    searchApiHeadersController.text =
        _prettyJson(plugin.searchApiConfig.request.headers);
    searchApiQueryController.text =
        _prettyJson(plugin.searchApiConfig.request.query);
    searchApiBodyController.text =
        _prettyJson(plugin.searchApiConfig.request.body);
    searchApiListPathController.text = plugin.searchApiConfig.listPath;
    searchApiNamePathController.text = plugin.searchApiConfig.namePath;
    searchApiSourcePathController.text = plugin.searchApiConfig.sourcePath;
    chapterApiMethod = plugin.chapterApiConfig.request.method;
    chapterApiBodyType = plugin.chapterApiConfig.request.bodyType;
    chapterApiFormat = plugin.chapterApiConfig.format;
    chapterApiURLController.text = plugin.chapterApiConfig.request.url;
    chapterApiHeadersController.text =
        _prettyJson(plugin.chapterApiConfig.request.headers);
    chapterApiQueryController.text =
        _prettyJson(plugin.chapterApiConfig.request.query);
    chapterApiBodyController.text =
        _prettyJson(plugin.chapterApiConfig.request.body);
    chapterApiRoadsPathController.text = plugin.chapterApiConfig.roadsPath;
    chapterApiRoadNamePathController.text =
        plugin.chapterApiConfig.roadNamePath;
    chapterApiEpisodesPathController.text =
        plugin.chapterApiConfig.episodesPath;
    chapterApiEpisodeNamePathController.text =
        plugin.chapterApiConfig.episodeNamePath;
    chapterApiEpisodeURLPathController.text =
        plugin.chapterApiConfig.episodeUrlPath;
    chapterApiRoadNamesPathController.text =
        plugin.chapterApiConfig.roadNamesPath;
    chapterApiRoadEpisodesPathController.text =
        plugin.chapterApiConfig.roadEpisodesPath;
    chapterApiRoadSeparatorController.text =
        plugin.chapterApiConfig.roadSeparator;
    chapterApiEpisodeSeparatorController.text =
        plugin.chapterApiConfig.episodeSeparator;
    chapterApiFieldSeparatorController.text =
        plugin.chapterApiConfig.fieldSeparator;
    chapterApiVariablesController.text =
        _prettyJson(plugin.chapterApiConfig.variables);
    chapterApiPageURLController.text =
        plugin.chapterApiConfig.episodePage?.url ?? '';
    chapterApiPageQueryController.text =
        _prettyJson(plugin.chapterApiConfig.episodePage?.query);
    _muliSources = plugin.muliSources;
    _useWebview = plugin.useWebview;
    _useNativePlayer = plugin.useNativePlayer;
    usePost = plugin.usePost;
    useLegacyParser = plugin.useLegacyParser;
    adBlocker = plugin.adBlocker;
    antiCrawlerEnabled = plugin.antiCrawlerConfig.enabled;
    captchaType = plugin.antiCrawlerConfig.captchaType;
    captchaImageController.text = plugin.antiCrawlerConfig.captchaImage;
    captchaInputController.text = plugin.antiCrawlerConfig.captchaInput;
    captchaButtonController.text = plugin.antiCrawlerConfig.captchaButton;
    captchaDetectType = plugin.antiCrawlerConfig.captchaDetectType;
    captchaDetectValueController.text =
        plugin.antiCrawlerConfig.captchaDetectValue;
    captchaScriptController.text = plugin.antiCrawlerConfig.captchaScript;
  }

  @override
  void dispose() {
    nameController.dispose();
    versionController.dispose();
    userAgentController.dispose();
    baseURLController.dispose();
    searchURLController.dispose();
    searchListController.dispose();
    searchNameController.dispose();
    searchResultController.dispose();
    chapterRoadsController.dispose();
    chapterResultController.dispose();
    refererController.dispose();
    searchApiURLController.dispose();
    searchApiHeadersController.dispose();
    searchApiQueryController.dispose();
    searchApiBodyController.dispose();
    searchApiListPathController.dispose();
    searchApiNamePathController.dispose();
    searchApiSourcePathController.dispose();
    chapterApiURLController.dispose();
    chapterApiHeadersController.dispose();
    chapterApiQueryController.dispose();
    chapterApiBodyController.dispose();
    chapterApiRoadsPathController.dispose();
    chapterApiRoadNamePathController.dispose();
    chapterApiEpisodesPathController.dispose();
    chapterApiEpisodeNamePathController.dispose();
    chapterApiEpisodeURLPathController.dispose();
    chapterApiRoadNamesPathController.dispose();
    chapterApiRoadEpisodesPathController.dispose();
    chapterApiRoadSeparatorController.dispose();
    chapterApiEpisodeSeparatorController.dispose();
    chapterApiFieldSeparatorController.dispose();
    chapterApiVariablesController.dispose();
    chapterApiPageURLController.dispose();
    chapterApiPageQueryController.dispose();
    captchaImageController.dispose();
    captchaInputController.dispose();
    captchaButtonController.dispose();
    captchaDetectValueController.dispose();
    captchaScriptController.dispose();
    super.dispose();
  }

  static String _prettyJson(Object? value) {
    if (value == null) return '';
    if (value is Map && value.isEmpty) return '{}';
    return const JsonEncoder.withIndent('  ').convert(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SysAppBar(
        title: Text(_RuleEditorText.pageTitle),
        actions: [
          IconButton(
            tooltip: _RuleEditorText.testRule,
            icon: const Icon(Icons.bug_report_outlined),
            onPressed: () {
              final editedPlugin = _tryBuildEditedPlugin();
              if (editedPlugin == null) return;
              context.pushNamed(
                '/settings/plugin/test',
                arguments: editedPlugin,
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EditorSectionCard(
                  icon: Icons.badge_rounded,
                  title: _RuleEditorText.sectionBasic,
                  description: _RuleEditorText.sectionBasicDesc,
                  children: [
                    EditorTextField(
                      controller: nameController,
                      label: _RuleEditorText.ruleName,
                    ),
                    EditorTextField(
                      controller: versionController,
                      label: _RuleEditorText.ruleVersion,
                    ),
                    EditorTextField(
                      controller: baseURLController,
                      label: _RuleEditorText.baseUrl,
                    ),
                  ],
                ),
                EditorSectionCard(
                  icon: Icons.search_rounded,
                  title: _RuleEditorText.sectionSearch,
                  description: _RuleEditorText.sectionSearchDesc,
                  children: [
                    EditorSegmentedField<String>(
                      label: _RuleEditorText.searchRuleType,
                      value: searchMode,
                      segments: _ruleModeSegments,
                      onChanged: (value) => setState(() => searchMode = value),
                    ),
                    EditorAnimatedSection(
                      activeKey: searchMode,
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: searchMode == RuleMode.xpath
                            ? _buildXPathSearchFields()
                            : _buildApiSearchFields(),
                      ),
                    ),
                  ],
                ),
                EditorSectionCard(
                  icon: Icons.playlist_play_rounded,
                  title: _RuleEditorText.sectionChapter,
                  description: _RuleEditorText.sectionChapterDesc,
                  children: [
                    EditorSegmentedField<String>(
                      label: _RuleEditorText.chapterRuleType,
                      value: chapterMode,
                      segments: _ruleModeSegments,
                      onChanged: (value) => setState(() => chapterMode = value),
                    ),
                    EditorAnimatedSection(
                      activeKey: chapterMode,
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: chapterMode == RuleMode.xpath
                            ? _buildXPathChapterFields()
                            : _buildApiChapterFields(),
                      ),
                    ),
                  ],
                ),
                _buildAdvancedOptionsCard(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
        icon: const Icon(Icons.save_rounded),
        label: Text(_RuleEditorText.save),
        onPressed: () async {
          final editedPlugin = _tryBuildEditedPlugin();
          if (editedPlugin == null) return;
          try {
            await pluginsController.updatePlugin(editedPlugin);
          } catch (error) {
            _showEditorError(error);
            return;
          }
          if (!context.mounted) return;
          context.pop();
        },
      ),
    );
  }

  Widget _buildAdvancedOptionsCard() {
    return EditorExpandableSectionCard(
      icon: Icons.tune_rounded,
      title: _RuleEditorText.advancedOptions,
      description: _RuleEditorText.advancedOptionsDesc,
      children: [
        EditorSubheader(label: _RuleEditorText.groupBehavior),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(_RuleEditorText.legacyParser),
          subtitle: Text(_RuleEditorText.legacyParserDesc),
          value: useLegacyParser,
          onChanged: (value) => setState(() => useLegacyParser = value),
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(_RuleEditorText.adBlocker),
          subtitle: Text(_RuleEditorText.adBlockerDesc),
          value: adBlocker,
          onChanged: (value) => setState(() => adBlocker = value),
        ),
        EditorSubheader(label: _RuleEditorText.groupNetwork),
        EditorTextField(
          controller: userAgentController,
          label: _RuleEditorText.userAgent,
          helper: _RuleEditorText.userAgentHelper,
        ),
        const SizedBox(height: 16),
        EditorTextField(
          controller: refererController,
          label: _RuleEditorText.referer,
          helper: _RuleEditorText.refererHelper,
        ),
        if (searchMode == RuleMode.xpath) ...[
          EditorSubheader(label: _RuleEditorText.groupAntiCrawler),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(_RuleEditorText.antiCrawlerEnable),
            subtitle: Text(_RuleEditorText.antiCrawlerEnableDesc),
            value: antiCrawlerEnabled,
            onChanged: (value) => setState(() => antiCrawlerEnabled = value),
          ),
          EditorAnimatedSection(
            activeKey: antiCrawlerEnabled,
            child: antiCrawlerEnabled
                ? Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _buildAntiCrawlerFields(),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ],
    );
  }

  List<Widget> _buildAntiCrawlerFields() => [
        EditorSegmentedField<int>(
          label: _RuleEditorText.captchaTypeLabel,
          value: captchaType,
          segments: [
            ButtonSegment(
              value: CaptchaType.imageCaptcha,
              label: Text(_RuleEditorText.captchaTypeImage),
            ),
            ButtonSegment(
              value: CaptchaType.autoClickButton,
              label: Text(_RuleEditorText.captchaTypeAutoClick),
            ),
            ButtonSegment(
              value: CaptchaType.customJavaScript,
              label: Text(_RuleEditorText.captchaTypeScript),
            ),
          ],
          onChanged: (value) => setState(() => captchaType = value),
          description: (value) => switch (value) {
            CaptchaType.imageCaptcha => _RuleEditorText.captchaTypeImageDesc,
            CaptchaType.autoClickButton =>
              _RuleEditorText.captchaTypeAutoClickDesc,
            CaptchaType.customJavaScript =>
              _RuleEditorText.captchaTypeScriptDesc,
            _ => _RuleEditorText.captchaTypeUnknownDesc,
          },
        ),
        EditorSegmentedField<int>(
          label: _RuleEditorText.captchaDetectTypeLabel,
          value: captchaDetectType,
          segments: [
            ButtonSegment(
              value: CaptchaDetectType.xpath,
              label: Text(_RuleEditorText.modeXPath),
            ),
            ButtonSegment(
              value: CaptchaDetectType.text,
              label: Text(_RuleEditorText.captchaDetectText),
            ),
            ButtonSegment(
              value: CaptchaDetectType.regex,
              label: Text(_RuleEditorText.captchaDetectRegex),
            ),
          ],
          onChanged: (value) => setState(() => captchaDetectType = value),
          description: (_) => _RuleEditorText.captchaDetectTypeDesc,
        ),
        EditorTextField(
          controller: captchaDetectValueController,
          label: _RuleEditorText.captchaDetectValue,
          hint: captchaDetectType == CaptchaDetectType.text
              ? _RuleEditorText.captchaDetectValueHintText
              : captchaDetectType == CaptchaDetectType.regex
                  ? _RuleEditorText.captchaDetectValueHintRegex
                  : _RuleEditorText.captchaDetectValueHintXPath,
          helper: _RuleEditorText.captchaDetectValueHelper,
        ),
        EditorAnimatedSection(
          activeKey: captchaType,
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (captchaType == CaptchaType.imageCaptcha) ...[
                EditorTextField(
                  controller: captchaImageController,
                  label: _RuleEditorText.captchaImage,
                  hint: _RuleEditorText.captchaImageHint,
                  helper: _RuleEditorText.captchaImageHelper,
                ),
                EditorTextField(
                  controller: captchaInputController,
                  label: _RuleEditorText.captchaInput,
                  hint: _RuleEditorText.captchaInputHint,
                  helper: _RuleEditorText.captchaInputHelper,
                ),
              ],
              if (captchaType != CaptchaType.customJavaScript)
                EditorTextField(
                  controller: captchaButtonController,
                  label: captchaType == CaptchaType.imageCaptcha
                      ? _RuleEditorText.captchaSubmitButton
                      : _RuleEditorText.verifyButton,
                  hint: _RuleEditorText.captchaButtonHint,
                  helper: captchaType == CaptchaType.imageCaptcha
                      ? _RuleEditorText.captchaSubmitButtonHelper
                      : _RuleEditorText.verifyButtonHelper,
                ),
              if (captchaType == CaptchaType.customJavaScript)
                EditorTextField(
                  controller: captchaScriptController,
                  label: _RuleEditorText.captchaScript,
                  hint: _RuleEditorText.captchaScriptHint,
                  helper: _RuleEditorText.captchaScriptHelper,
                  maxLines: 8,
                ),
            ],
          ),
        ),
      ];

  List<Widget> _buildXPathSearchFields() => [
        EditorSegmentedField<String>(
          label: _RuleEditorText.searchMethod,
          value: usePost ? 'POST' : 'GET',
          segments: _methodSegments,
          onChanged: (value) => setState(() => usePost = value == 'POST'),
        ),
        EditorTextField(
          controller: searchURLController,
          label: _RuleEditorText.searchUrl,
        ),
        EditorTextField(
          controller: searchListController,
          label: _RuleEditorText.searchListXPath,
        ),
        EditorTextField(
          controller: searchNameController,
          label: _RuleEditorText.itemNameXPath,
        ),
        EditorTextField(
          controller: searchResultController,
          label: _RuleEditorText.itemLinkXPath,
        ),
      ];

  List<Widget> _buildXPathChapterFields() => [
        EditorTextField(
          controller: chapterRoadsController,
          label: _RuleEditorText.roadListXPath,
        ),
        EditorTextField(
          controller: chapterResultController,
          label: _RuleEditorText.episodeListXPath,
        ),
      ];

  List<Widget> _buildApiSearchFields() => [
        EditorSegmentedField<String>(
          label: _RuleEditorText.searchMethod,
          value: searchApiMethod,
          segments: _methodSegments,
          onChanged: (value) => setState(() => searchApiMethod = value),
        ),
        EditorTextField(
          controller: searchApiURLController,
          label: _RuleEditorText.searchRequestUrl,
        ),
        EditorTextField(
          controller: searchApiHeadersController,
          label: _RuleEditorText.searchHeaders,
          maxLines: 4,
        ),
        EditorTextField(
          controller: searchApiQueryController,
          label: _RuleEditorText.searchQuery,
          maxLines: 4,
        ),
        EditorSegmentedField<String>(
          label: _RuleEditorText.searchBodyType,
          value: searchApiBodyType,
          segments: _bodyTypeSegments,
          onChanged: (value) => setState(() => searchApiBodyType = value),
        ),
        if (searchApiBodyType != ApiBodyType.none)
          EditorTextField(
            controller: searchApiBodyController,
            label: _RuleEditorText.searchBody,
            maxLines: 5,
          ),
        EditorTextField(
          controller: searchApiListPathController,
          label: _RuleEditorText.searchListPath,
        ),
        EditorTextField(
          controller: searchApiNamePathController,
          label: _RuleEditorText.itemNamePath,
        ),
        EditorTextField(
          controller: searchApiSourcePathController,
          label: _RuleEditorText.itemSourcePath,
        ),
      ];

  List<Widget> _buildApiChapterFields() => [
        EditorSegmentedField<String>(
          label: _RuleEditorText.chapterMethod,
          value: chapterApiMethod,
          segments: _methodSegments,
          onChanged: (value) => setState(() => chapterApiMethod = value),
        ),
        EditorTextField(
          controller: chapterApiURLController,
          label: _RuleEditorText.chapterRequestUrl,
        ),
        EditorTextField(
          controller: chapterApiHeadersController,
          label: _RuleEditorText.chapterHeaders,
          maxLines: 4,
        ),
        EditorTextField(
          controller: chapterApiQueryController,
          label: _RuleEditorText.chapterQuery,
          maxLines: 4,
        ),
        EditorSegmentedField<String>(
          label: _RuleEditorText.chapterBodyType,
          value: chapterApiBodyType,
          segments: _bodyTypeSegments,
          onChanged: (value) => setState(() => chapterApiBodyType = value),
        ),
        if (chapterApiBodyType != ApiBodyType.none)
          EditorTextField(
            controller: chapterApiBodyController,
            label: _RuleEditorText.chapterBody,
            maxLines: 5,
          ),
        EditorSegmentedField<String>(
          label: _RuleEditorText.chapterResponseFormat,
          value: chapterApiFormat,
          segments: [
            ButtonSegment(
              value: ApiChapterFormat.nested,
              label: Text(_RuleEditorText.formatNested),
            ),
            ButtonSegment(
              value: ApiChapterFormat.delimited,
              label: Text(_RuleEditorText.formatDelimited),
            ),
          ],
          onChanged: (value) => setState(() => chapterApiFormat = value),
        ),
        EditorAnimatedSection(
          activeKey: chapterApiFormat,
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: chapterApiFormat == ApiChapterFormat.nested
                ? [
                    EditorTextField(
                      controller: chapterApiRoadsPathController,
                      label: _RuleEditorText.roadListPath,
                    ),
                    EditorTextField(
                      controller: chapterApiRoadNamePathController,
                      label: _RuleEditorText.roadNamePath,
                    ),
                    EditorTextField(
                      controller: chapterApiEpisodesPathController,
                      label: _RuleEditorText.episodeListPath,
                    ),
                    EditorTextField(
                      controller: chapterApiEpisodeNamePathController,
                      label: _RuleEditorText.episodeNamePath,
                    ),
                    EditorTextField(
                      controller: chapterApiEpisodeURLPathController,
                      label: _RuleEditorText.playbackEntryPath,
                      helper: _RuleEditorText.playbackEntryPathHelper,
                    ),
                  ]
                : [
                    EditorTextField(
                      controller: chapterApiRoadNamesPathController,
                      label: _RuleEditorText.roadNamesPath,
                    ),
                    EditorTextField(
                      controller: chapterApiRoadEpisodesPathController,
                      label: _RuleEditorText.roadEpisodesPath,
                    ),
                    EditorTextField(
                      controller: chapterApiRoadSeparatorController,
                      label: _RuleEditorText.roadSeparator,
                    ),
                    EditorTextField(
                      controller: chapterApiEpisodeSeparatorController,
                      label: _RuleEditorText.episodeSeparator,
                    ),
                    EditorTextField(
                      controller: chapterApiFieldSeparatorController,
                      label: _RuleEditorText.fieldSeparator,
                    ),
                  ],
          ),
        ),
        EditorTextField(
          controller: chapterApiVariablesController,
          label: _RuleEditorText.responseVariables,
          maxLines: 5,
        ),
        EditorTextField(
          controller: chapterApiPageURLController,
          label: _RuleEditorText.playPageUrl,
          helper: _RuleEditorText.playPageUrlHelper,
        ),
        EditorTextField(
          controller: chapterApiPageQueryController,
          label: _RuleEditorText.playPageQuery,
          helper: _RuleEditorText.playPageQueryHelper,
          maxLines: 5,
        ),
      ];

  /// Builds the edited plugin, surfacing build/validation errors to the
  /// user. Returns null when the current input does not form a valid rule.
  Plugin? _tryBuildEditedPlugin() {
    try {
      return _buildEditedPlugin();
    } catch (error) {
      _showEditorError(error);
      return null;
    }
  }

  Plugin _buildEditedPlugin() {
    final searchConfig = _buildSearchApiConfig();
    final chapterConfig = _buildChapterApiConfig();
    return Plugin(
      api: searchMode == RuleMode.api || chapterMode == RuleMode.api
          ? ApiEndpoints.apiLevel.toString()
          : _api,
      type: _type,
      name: nameController.text,
      version: versionController.text,
      muliSources: _muliSources,
      useWebview: _useWebview,
      useNativePlayer: _useNativePlayer,
      usePost: usePost,
      useLegacyParser: useLegacyParser,
      adBlocker: adBlocker,
      userAgent: userAgentController.text,
      baseUrl: baseURLController.text,
      searchURL: searchURLController.text,
      searchList: searchListController.text,
      searchName: searchNameController.text,
      searchResult: searchResultController.text,
      chapterRoads: chapterRoadsController.text,
      chapterResult: chapterResultController.text,
      referer: refererController.text,
      searchMode: searchMode,
      chapterMode: chapterMode,
      searchApiConfig: searchConfig,
      chapterApiConfig: chapterConfig,
      antiCrawlerConfig: AntiCrawlerConfig(
        enabled: antiCrawlerEnabled,
        captchaType: captchaType,
        captchaImage: captchaImageController.text,
        captchaInput: captchaInputController.text,
        captchaButton: captchaButtonController.text,
        captchaDetectType: captchaDetectType,
        captchaDetectValue: captchaDetectValueController.text,
        captchaScript: captchaScriptController.text,
      ),
    );
  }

  ApiSearchConfig _buildSearchApiConfig() {
    final shouldValidate = searchMode == RuleMode.api;
    String valueOf(TextEditingController controller) =>
        shouldValidate ? controller.text.trim() : controller.text;
    final config = ApiSearchConfig(
      request: ApiRequestConfig(
        method: searchApiMethod,
        url: valueOf(searchApiURLController),
        headers: _parseJsonMap(
          searchApiHeadersController,
          _RuleEditorText.searchHeaders,
        ),
        query: _parseJsonMap(
          searchApiQueryController,
          _RuleEditorText.searchQuery,
        ),
        bodyType: searchApiBodyType,
        body: _parseBody(
          searchApiBodyController,
          searchApiBodyType,
          _RuleEditorText.searchBody,
        ),
      ),
      listPath: valueOf(searchApiListPathController),
      namePath: valueOf(searchApiNamePathController),
      sourcePath: valueOf(searchApiSourcePathController),
    );
    if (!shouldValidate) return config;
    if (config.request.url.isEmpty) {
      throw FormatException(currentL10n.ruleEditorSearchUrlRequired);
    }
    const ApiRuleStrategy()
      ..prepareRequest(config.request, const {'keyword': 'test'})
      ..validateSearchConfig(config);
    return config;
  }

  ApiChapterConfig _buildChapterApiConfig() {
    final pageUrl = chapterApiPageURLController.text.trim();
    final variablesRaw = _parseJsonMap(
      chapterApiVariablesController,
      _RuleEditorText.responseVariables,
    );
    final config = ApiChapterConfig(
      request: ApiRequestConfig(
        method: chapterApiMethod,
        url: chapterApiURLController.text.trim(),
        headers: _parseJsonMap(
          chapterApiHeadersController,
          _RuleEditorText.chapterHeaders,
        ),
        query: _parseJsonMap(
          chapterApiQueryController,
          _RuleEditorText.chapterQuery,
        ),
        bodyType: chapterApiBodyType,
        body: _parseBody(
          chapterApiBodyController,
          chapterApiBodyType,
          _RuleEditorText.chapterBody,
        ),
      ),
      format: chapterApiFormat,
      roadsPath: chapterApiRoadsPathController.text.trim(),
      roadNamePath: chapterApiRoadNamePathController.text.trim(),
      episodesPath: chapterApiEpisodesPathController.text.trim(),
      episodeNamePath: chapterApiEpisodeNamePathController.text.trim(),
      episodeUrlPath: chapterApiEpisodeURLPathController.text.trim(),
      roadNamesPath: chapterApiRoadNamesPathController.text.trim(),
      roadEpisodesPath: chapterApiRoadEpisodesPathController.text.trim(),
      roadSeparator: chapterApiRoadSeparatorController.text,
      episodeSeparator: chapterApiEpisodeSeparatorController.text,
      fieldSeparator: chapterApiFieldSeparatorController.text,
      variables: variablesRaw.map(
        (key, value) => MapEntry(key, value.toString()),
      ),
      episodePage: pageUrl.isEmpty
          ? null
          : ApiEpisodePageConfig(
              url: pageUrl,
              query: _parseJsonMap(
                chapterApiPageQueryController,
                _RuleEditorText.playPageQuery,
              ),
            ),
    );
    if (chapterMode != RuleMode.api) return config;
    if (config.request.url.isEmpty) {
      throw FormatException(currentL10n.ruleEditorEpisodeUrlRequired);
    }
    const ApiRuleStrategy()
      ..prepareRequest(config.request, const {'source': 'test'})
      ..validateChapterConfig(config);
    return config;
  }

  Map<String, dynamic> _parseJsonMap(
    TextEditingController controller,
    String label,
  ) {
    final text = controller.text.trim();
    if (text.isEmpty) return <String, dynamic>{};
    final value = jsonDecode(text);
    if (value is! Map) {
      throw FormatException(currentL10n.mustBeJsonObject(label));
    }
    return value.map((key, value) => MapEntry(key.toString(), value));
  }

  dynamic _parseBody(
    TextEditingController controller,
    String bodyType,
    String label,
  ) {
    if (bodyType == ApiBodyType.none) return null;
    final text = controller.text.trim();
    if (text.isEmpty) return <String, dynamic>{};
    final dynamic value;
    try {
      value = jsonDecode(text);
    } on FormatException catch (error) {
      throw FormatException(
        currentL10n.invalidJsonWithError(label, error.message),
      );
    }
    if (bodyType == ApiBodyType.form && value is! Map) {
      throw FormatException(currentL10n.formBodyMustBeJsonObject(label));
    }
    return value;
  }

  void _showEditorError(Object error) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(error.toString())),
    );
  }
}
