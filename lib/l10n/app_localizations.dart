import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In zh, this message translates to:
  /// **'Kazumi Max'**
  String get appTitle;

  /// No description provided for @appearanceSettings.
  ///
  /// In zh, this message translates to:
  /// **'外观设置'**
  String get appearanceSettings;

  /// No description provided for @settings.
  ///
  /// In zh, this message translates to:
  /// **'设置'**
  String get settings;

  /// No description provided for @settingsGroupPlayback.
  ///
  /// In zh, this message translates to:
  /// **'播放'**
  String get settingsGroupPlayback;

  /// No description provided for @settingsGroupResources.
  ///
  /// In zh, this message translates to:
  /// **'资源'**
  String get settingsGroupResources;

  /// No description provided for @settingsGroupApplication.
  ///
  /// In zh, this message translates to:
  /// **'应用'**
  String get settingsGroupApplication;

  /// No description provided for @settingsGroupOther.
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get settingsGroupOther;

  /// No description provided for @playerSettings.
  ///
  /// In zh, this message translates to:
  /// **'播放设置'**
  String get playerSettings;

  /// No description provided for @playerSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'解码、渲染与播放行为'**
  String get playerSettingsDescription;

  /// No description provided for @danmakuSettings.
  ///
  /// In zh, this message translates to:
  /// **'弹幕设置'**
  String get danmakuSettings;

  /// No description provided for @danmakuSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'弹幕来源与显示效果'**
  String get danmakuSettingsDescription;

  /// No description provided for @controlSettings.
  ///
  /// In zh, this message translates to:
  /// **'操作设置'**
  String get controlSettings;

  /// No description provided for @controlSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'播放器按键映射'**
  String get controlSettingsDescription;

  /// No description provided for @pluginManagement.
  ///
  /// In zh, this message translates to:
  /// **'规则管理'**
  String get pluginManagement;

  /// No description provided for @pluginManagementDescription.
  ///
  /// In zh, this message translates to:
  /// **'番剧资源规则'**
  String get pluginManagementDescription;

  /// No description provided for @downloadSettings.
  ///
  /// In zh, this message translates to:
  /// **'下载设置'**
  String get downloadSettings;

  /// No description provided for @downloadSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'并发数与弹幕缓存'**
  String get downloadSettingsDescription;

  /// No description provided for @appearanceSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'主题、配色与字体'**
  String get appearanceSettingsDescription;

  /// No description provided for @interfaceSettings.
  ///
  /// In zh, this message translates to:
  /// **'界面设置'**
  String get interfaceSettings;

  /// No description provided for @interfaceSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'启动页与展示信息'**
  String get interfaceSettingsDescription;

  /// No description provided for @syncSettings.
  ///
  /// In zh, this message translates to:
  /// **'同步设置'**
  String get syncSettings;

  /// No description provided for @syncSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 与 Bangumi 同步'**
  String get syncSettingsDescription;

  /// No description provided for @proxySettings.
  ///
  /// In zh, this message translates to:
  /// **'代理设置'**
  String get proxySettings;

  /// No description provided for @proxySettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'HTTP 代理服务器'**
  String get proxySettingsDescription;

  /// No description provided for @about.
  ///
  /// In zh, this message translates to:
  /// **'关于'**
  String get about;

  /// No description provided for @aboutDescription.
  ///
  /// In zh, this message translates to:
  /// **'版本、日志与开源许可'**
  String get aboutDescription;

  /// No description provided for @appearance.
  ///
  /// In zh, this message translates to:
  /// **'外观'**
  String get appearance;

  /// No description provided for @darkMode.
  ///
  /// In zh, this message translates to:
  /// **'深色模式'**
  String get darkMode;

  /// No description provided for @followSystem.
  ///
  /// In zh, this message translates to:
  /// **'跟随系统'**
  String get followSystem;

  /// No description provided for @light.
  ///
  /// In zh, this message translates to:
  /// **'浅色'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In zh, this message translates to:
  /// **'深色'**
  String get dark;

  /// No description provided for @colorScheme.
  ///
  /// In zh, this message translates to:
  /// **'配色方案'**
  String get colorScheme;

  /// No description provided for @colorDefault.
  ///
  /// In zh, this message translates to:
  /// **'默认'**
  String get colorDefault;

  /// No description provided for @colorTeal.
  ///
  /// In zh, this message translates to:
  /// **'青色'**
  String get colorTeal;

  /// No description provided for @colorBlue.
  ///
  /// In zh, this message translates to:
  /// **'蓝色'**
  String get colorBlue;

  /// No description provided for @colorIndigo.
  ///
  /// In zh, this message translates to:
  /// **'靛蓝色'**
  String get colorIndigo;

  /// No description provided for @colorViolet.
  ///
  /// In zh, this message translates to:
  /// **'紫罗兰色'**
  String get colorViolet;

  /// No description provided for @colorPink.
  ///
  /// In zh, this message translates to:
  /// **'粉红色'**
  String get colorPink;

  /// No description provided for @colorYellow.
  ///
  /// In zh, this message translates to:
  /// **'黄色'**
  String get colorYellow;

  /// No description provided for @colorOrange.
  ///
  /// In zh, this message translates to:
  /// **'橙色'**
  String get colorOrange;

  /// No description provided for @colorDeepOrange.
  ///
  /// In zh, this message translates to:
  /// **'深橙色'**
  String get colorDeepOrange;

  /// No description provided for @dynamicColor.
  ///
  /// In zh, this message translates to:
  /// **'动态配色'**
  String get dynamicColor;

  /// No description provided for @useSystemFont.
  ///
  /// In zh, this message translates to:
  /// **'使用系统字体'**
  String get useSystemFont;

  /// No description provided for @useMiSansDescription.
  ///
  /// In zh, this message translates to:
  /// **'关闭后使用 MI Sans 字体'**
  String get useMiSansDescription;

  /// No description provided for @dynamicColorDescription.
  ///
  /// In zh, this message translates to:
  /// **'动态配色仅支持安卓 12 及以上和桌面平台'**
  String get dynamicColorDescription;

  /// No description provided for @display.
  ///
  /// In zh, this message translates to:
  /// **'显示'**
  String get display;

  /// No description provided for @oledOptimization.
  ///
  /// In zh, this message translates to:
  /// **'OLED 优化'**
  String get oledOptimization;

  /// No description provided for @oledOptimizationDescription.
  ///
  /// In zh, this message translates to:
  /// **'深色模式下使用纯黑背景'**
  String get oledOptimizationDescription;

  /// No description provided for @window.
  ///
  /// In zh, this message translates to:
  /// **'窗口'**
  String get window;

  /// No description provided for @useSystemTitleBar.
  ///
  /// In zh, this message translates to:
  /// **'使用系统标题栏'**
  String get useSystemTitleBar;

  /// No description provided for @restartToApply.
  ///
  /// In zh, this message translates to:
  /// **'重启应用生效'**
  String get restartToApply;

  /// No description provided for @screen.
  ///
  /// In zh, this message translates to:
  /// **'屏幕'**
  String get screen;

  /// No description provided for @screenRefreshRate.
  ///
  /// In zh, this message translates to:
  /// **'屏幕帧率'**
  String get screenRefreshRate;

  /// No description provided for @language.
  ///
  /// In zh, this message translates to:
  /// **'语言'**
  String get language;

  /// No description provided for @simplifiedChinese.
  ///
  /// In zh, this message translates to:
  /// **'简体中文'**
  String get simplifiedChinese;

  /// No description provided for @english.
  ///
  /// In zh, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @exitConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'退出确认'**
  String get exitConfirmation;

  /// No description provided for @exitQuestion.
  ///
  /// In zh, this message translates to:
  /// **'您想要退出 Kazumi Max 吗？'**
  String get exitQuestion;

  /// No description provided for @doNotAskAgain.
  ///
  /// In zh, this message translates to:
  /// **'下次不再询问'**
  String get doNotAskAgain;

  /// No description provided for @exitApp.
  ///
  /// In zh, this message translates to:
  /// **'退出 Kazumi Max'**
  String get exitApp;

  /// No description provided for @minimizeToTray.
  ///
  /// In zh, this message translates to:
  /// **'最小化至托盘'**
  String get minimizeToTray;

  /// No description provided for @cancel.
  ///
  /// In zh, this message translates to:
  /// **'取消'**
  String get cancel;

  /// No description provided for @showWindow.
  ///
  /// In zh, this message translates to:
  /// **'显示窗口'**
  String get showWindow;

  /// No description provided for @internalError.
  ///
  /// In zh, this message translates to:
  /// **'内部错误'**
  String get internalError;

  /// No description provided for @unknownPath.
  ///
  /// In zh, this message translates to:
  /// **'未知路径'**
  String get unknownPath;

  /// No description provided for @storageInitializationError.
  ///
  /// In zh, this message translates to:
  /// **'存储初始化错误\n当前储存位置 {path}\n尝试删除该目录以重置本地存储'**
  String storageInitializationError(String path);

  /// No description provided for @exitProgram.
  ///
  /// In zh, this message translates to:
  /// **'退出程序'**
  String get exitProgram;

  /// No description provided for @startup.
  ///
  /// In zh, this message translates to:
  /// **'启动'**
  String get startup;

  /// No description provided for @startupPage.
  ///
  /// In zh, this message translates to:
  /// **'启动界面设置'**
  String get startupPage;

  /// No description provided for @startupPageDescription.
  ///
  /// In zh, this message translates to:
  /// **'设置应用开启时的默认页面'**
  String get startupPageDescription;

  /// No description provided for @pagePopular.
  ///
  /// In zh, this message translates to:
  /// **'推荐'**
  String get pagePopular;

  /// No description provided for @pageTimeline.
  ///
  /// In zh, this message translates to:
  /// **'时间表'**
  String get pageTimeline;

  /// No description provided for @pageCollection.
  ///
  /// In zh, this message translates to:
  /// **'追番'**
  String get pageCollection;

  /// No description provided for @pageMy.
  ///
  /// In zh, this message translates to:
  /// **'我的'**
  String get pageMy;

  /// No description provided for @displayedInformation.
  ///
  /// In zh, this message translates to:
  /// **'展示信息'**
  String get displayedInformation;

  /// No description provided for @showRating.
  ///
  /// In zh, this message translates to:
  /// **'显示评分'**
  String get showRating;

  /// No description provided for @showRatingDescription.
  ///
  /// In zh, this message translates to:
  /// **'关闭后将在概览中隐藏评分信息'**
  String get showRatingDescription;

  /// No description provided for @showAnimeCounter.
  ///
  /// In zh, this message translates to:
  /// **'显示追番统计'**
  String get showAnimeCounter;

  /// No description provided for @showAnimeCounterDescription.
  ///
  /// In zh, this message translates to:
  /// **'在追番页面的分类标签上显示数量'**
  String get showAnimeCounterDescription;

  /// No description provided for @concurrencySettings.
  ///
  /// In zh, this message translates to:
  /// **'并发设置'**
  String get concurrencySettings;

  /// No description provided for @parallelEpisodes.
  ///
  /// In zh, this message translates to:
  /// **'同时下载集数'**
  String get parallelEpisodes;

  /// No description provided for @parallelEpisodesDescription.
  ///
  /// In zh, this message translates to:
  /// **'并行下载的剧集数量'**
  String get parallelEpisodesDescription;

  /// No description provided for @episodeCount.
  ///
  /// In zh, this message translates to:
  /// **'{count} 集'**
  String episodeCount(int count);

  /// No description provided for @parallelSegments.
  ///
  /// In zh, this message translates to:
  /// **'分片并发数'**
  String get parallelSegments;

  /// No description provided for @parallelSegmentsDescription.
  ///
  /// In zh, this message translates to:
  /// **'每集同时下载的分片数量'**
  String get parallelSegmentsDescription;

  /// No description provided for @itemCount.
  ///
  /// In zh, this message translates to:
  /// **'{count} 个'**
  String itemCount(int count);

  /// No description provided for @cacheSettings.
  ///
  /// In zh, this message translates to:
  /// **'缓存设置'**
  String get cacheSettings;

  /// No description provided for @downloadLocation.
  ///
  /// In zh, this message translates to:
  /// **'下载位置'**
  String get downloadLocation;

  /// No description provided for @readingDefaultLocation.
  ///
  /// In zh, this message translates to:
  /// **'正在读取默认位置...'**
  String get readingDefaultLocation;

  /// No description provided for @customDownloadLocationDescription.
  ///
  /// In zh, this message translates to:
  /// **'当前使用自定义下载位置，修改后仅对新下载生效'**
  String get customDownloadLocationDescription;

  /// No description provided for @defaultDownloadLocationDescription.
  ///
  /// In zh, this message translates to:
  /// **'当前使用默认下载位置，修改后仅对新下载生效'**
  String get defaultDownloadLocationDescription;

  /// No description provided for @restoreDefault.
  ///
  /// In zh, this message translates to:
  /// **'恢复默认'**
  String get restoreDefault;

  /// No description provided for @cacheDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'缓存弹幕'**
  String get cacheDanmaku;

  /// No description provided for @cacheDanmakuDescription.
  ///
  /// In zh, this message translates to:
  /// **'下载视频时同时缓存弹幕数据'**
  String get cacheDanmakuDescription;

  /// No description provided for @information.
  ///
  /// In zh, this message translates to:
  /// **'说明'**
  String get information;

  /// No description provided for @aboutConcurrency.
  ///
  /// In zh, this message translates to:
  /// **'关于并发设置'**
  String get aboutConcurrency;

  /// No description provided for @concurrencyExplanation.
  ///
  /// In zh, this message translates to:
  /// **'• 集数并发：同时下载多少集视频\n• 分片并发：每集内同时下载多少个视频片段\n• 较高的并发可提升速度，但可能被服务器限制\n• 修改后对新开始的下载生效'**
  String get concurrencyExplanation;

  /// No description provided for @directorySelectionUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'当前平台不支持手动选择目录'**
  String get directorySelectionUnsupported;

  /// No description provided for @selectDownloadLocation.
  ///
  /// In zh, this message translates to:
  /// **'选择下载位置'**
  String get selectDownloadLocation;

  /// No description provided for @directoryAccessFailed.
  ///
  /// In zh, this message translates to:
  /// **'无法获得该目录的持久访问权限，请更换目录'**
  String get directoryAccessFailed;

  /// No description provided for @downloadLocationUpdated.
  ///
  /// In zh, this message translates to:
  /// **'下载位置已更新，仅对新下载生效'**
  String get downloadLocationUpdated;

  /// No description provided for @directoryWriteFailed.
  ///
  /// In zh, this message translates to:
  /// **'无法写入该目录：{message}'**
  String directoryWriteFailed(String message);

  /// No description provided for @downloadLocationSelectionFailed.
  ///
  /// In zh, this message translates to:
  /// **'选择下载位置失败：{error}'**
  String downloadLocationSelectionFailed(String error);

  /// No description provided for @defaultDownloadLocationRestored.
  ///
  /// In zh, this message translates to:
  /// **'已恢复默认下载位置，仅对新下载生效'**
  String get defaultDownloadLocationRestored;

  /// No description provided for @shortcutGroupPlayback.
  ///
  /// In zh, this message translates to:
  /// **'播放控制'**
  String get shortcutGroupPlayback;

  /// No description provided for @shortcutGroupVolume.
  ///
  /// In zh, this message translates to:
  /// **'音量'**
  String get shortcutGroupVolume;

  /// No description provided for @shortcutGroupVisuals.
  ///
  /// In zh, this message translates to:
  /// **'画面与弹幕'**
  String get shortcutGroupVisuals;

  /// No description provided for @shortcutGroupSpeed.
  ///
  /// In zh, this message translates to:
  /// **'倍速'**
  String get shortcutGroupSpeed;

  /// No description provided for @shortcutGroupOther.
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get shortcutGroupOther;

  /// No description provided for @shortcutInstruction.
  ///
  /// In zh, this message translates to:
  /// **'点按按键标签，再按下新按键完成修改'**
  String get shortcutInstruction;

  /// No description provided for @shortcutConflict.
  ///
  /// In zh, this message translates to:
  /// **'按键已被【{name}】占用，请重新输入'**
  String shortcutConflict(String name);

  /// No description provided for @shortcutsRestored.
  ///
  /// In zh, this message translates to:
  /// **'已恢复默认快捷键'**
  String get shortcutsRestored;

  /// No description provided for @pressAnyKey.
  ///
  /// In zh, this message translates to:
  /// **'按任意键'**
  String get pressAnyKey;

  /// No description provided for @addKey.
  ///
  /// In zh, this message translates to:
  /// **'添加按键'**
  String get addKey;

  /// No description provided for @keySpace.
  ///
  /// In zh, this message translates to:
  /// **'空格'**
  String get keySpace;

  /// No description provided for @keyEnter.
  ///
  /// In zh, this message translates to:
  /// **'回车'**
  String get keyEnter;

  /// No description provided for @keyBackspace.
  ///
  /// In zh, this message translates to:
  /// **'退格'**
  String get keyBackspace;

  /// No description provided for @shortcutPlayPause.
  ///
  /// In zh, this message translates to:
  /// **'播放 / 暂停'**
  String get shortcutPlayPause;

  /// No description provided for @shortcutForward.
  ///
  /// In zh, this message translates to:
  /// **'快进 / 长按倍速'**
  String get shortcutForward;

  /// No description provided for @shortcutRewind.
  ///
  /// In zh, this message translates to:
  /// **'快退'**
  String get shortcutRewind;

  /// No description provided for @shortcutNext.
  ///
  /// In zh, this message translates to:
  /// **'下一集'**
  String get shortcutNext;

  /// No description provided for @shortcutPrevious.
  ///
  /// In zh, this message translates to:
  /// **'上一集'**
  String get shortcutPrevious;

  /// No description provided for @shortcutVolumeUp.
  ///
  /// In zh, this message translates to:
  /// **'音量加'**
  String get shortcutVolumeUp;

  /// No description provided for @shortcutVolumeDown.
  ///
  /// In zh, this message translates to:
  /// **'音量减'**
  String get shortcutVolumeDown;

  /// No description provided for @shortcutMute.
  ///
  /// In zh, this message translates to:
  /// **'静音'**
  String get shortcutMute;

  /// No description provided for @shortcutFullscreen.
  ///
  /// In zh, this message translates to:
  /// **'全屏'**
  String get shortcutFullscreen;

  /// No description provided for @shortcutExitFullscreen.
  ///
  /// In zh, this message translates to:
  /// **'退出全屏'**
  String get shortcutExitFullscreen;

  /// No description provided for @shortcutToggleDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'弹幕开关'**
  String get shortcutToggleDanmaku;

  /// No description provided for @shortcutScreenshot.
  ///
  /// In zh, this message translates to:
  /// **'截图'**
  String get shortcutScreenshot;

  /// No description provided for @shortcutSkip.
  ///
  /// In zh, this message translates to:
  /// **'跳过'**
  String get shortcutSkip;

  /// No description provided for @shortcutSpeedPreset.
  ///
  /// In zh, this message translates to:
  /// **'倍速：{speed}x'**
  String shortcutSpeedPreset(int speed);

  /// No description provided for @shortcutSpeedUp.
  ///
  /// In zh, this message translates to:
  /// **'倍速加'**
  String get shortcutSpeedUp;

  /// No description provided for @shortcutSpeedDown.
  ///
  /// In zh, this message translates to:
  /// **'倍速减'**
  String get shortcutSpeedDown;

  /// No description provided for @proxy.
  ///
  /// In zh, this message translates to:
  /// **'代理'**
  String get proxy;

  /// No description provided for @enableProxy.
  ///
  /// In zh, this message translates to:
  /// **'启用代理'**
  String get enableProxy;

  /// No description provided for @enableProxyDescription.
  ///
  /// In zh, this message translates to:
  /// **'启用后网络请求将通过代理服务器'**
  String get enableProxyDescription;

  /// No description provided for @proxyConfiguration.
  ///
  /// In zh, this message translates to:
  /// **'代理配置'**
  String get proxyConfiguration;

  /// No description provided for @proxyConfigurationDescription.
  ///
  /// In zh, this message translates to:
  /// **'配置代理服务器地址和认证信息'**
  String get proxyConfigurationDescription;

  /// No description provided for @completeProxyTestFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先在代理配置中完成测试'**
  String get completeProxyTestFirst;

  /// No description provided for @proxyAddress.
  ///
  /// In zh, this message translates to:
  /// **'代理地址'**
  String get proxyAddress;

  /// No description provided for @enterProxyAddress.
  ///
  /// In zh, this message translates to:
  /// **'请输入代理地址'**
  String get enterProxyAddress;

  /// No description provided for @invalidProxyFormat.
  ///
  /// In zh, this message translates to:
  /// **'格式错误，请使用 http://host:port 格式'**
  String get invalidProxyFormat;

  /// No description provided for @testAddress.
  ///
  /// In zh, this message translates to:
  /// **'测试地址'**
  String get testAddress;

  /// No description provided for @saveAndTest.
  ///
  /// In zh, this message translates to:
  /// **'保存并测试'**
  String get saveAndTest;

  /// No description provided for @testSucceeded.
  ///
  /// In zh, this message translates to:
  /// **'测试成功'**
  String get testSucceeded;

  /// No description provided for @proxyConnectionFailed.
  ///
  /// In zh, this message translates to:
  /// **'代理连接失败'**
  String get proxyConnectionFailed;

  /// No description provided for @restoreDefaultPlayerSettings.
  ///
  /// In zh, this message translates to:
  /// **'恢复默认播放设置'**
  String get restoreDefaultPlayerSettings;

  /// No description provided for @restoreDefaultPlayerSettingsConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'播放设置、硬件解码器、视频渲染器和超分辨率设置将恢复为默认值。'**
  String get restoreDefaultPlayerSettingsConfirmation;

  /// No description provided for @defaultPlayerSettingsRestored.
  ///
  /// In zh, this message translates to:
  /// **'已恢复默认播放设置'**
  String get defaultPlayerSettingsRestored;

  /// No description provided for @confirm.
  ///
  /// In zh, this message translates to:
  /// **'确定'**
  String get confirm;

  /// No description provided for @enterNumber.
  ///
  /// In zh, this message translates to:
  /// **'请输入数字'**
  String get enterNumber;

  /// No description provided for @enterPositiveNumber.
  ///
  /// In zh, this message translates to:
  /// **'请输入大于 0 的数字'**
  String get enterPositiveNumber;

  /// No description provided for @seconds.
  ///
  /// In zh, this message translates to:
  /// **'{count} 秒'**
  String seconds(num count);

  /// No description provided for @decodingAndRendering.
  ///
  /// In zh, this message translates to:
  /// **'解码与渲染'**
  String get decodingAndRendering;

  /// No description provided for @hardwareDecoding.
  ///
  /// In zh, this message translates to:
  /// **'硬件解码'**
  String get hardwareDecoding;

  /// No description provided for @hardwareDecoder.
  ///
  /// In zh, this message translates to:
  /// **'硬件解码器'**
  String get hardwareDecoder;

  /// No description provided for @hardwareDecoderEnabledDescription.
  ///
  /// In zh, this message translates to:
  /// **'仅在硬件解码启用时生效'**
  String get hardwareDecoderEnabledDescription;

  /// No description provided for @videoRenderer.
  ///
  /// In zh, this message translates to:
  /// **'视频渲染器'**
  String get videoRenderer;

  /// No description provided for @videoRendererDescription.
  ///
  /// In zh, this message translates to:
  /// **'选择视频输出方式'**
  String get videoRendererDescription;

  /// No description provided for @lowMemoryMode.
  ///
  /// In zh, this message translates to:
  /// **'低内存模式'**
  String get lowMemoryMode;

  /// No description provided for @lowMemoryModeMetered.
  ///
  /// In zh, this message translates to:
  /// **'移动网络下已自动启用'**
  String get lowMemoryModeMetered;

  /// No description provided for @lowMemoryModeDescription.
  ///
  /// In zh, this message translates to:
  /// **'禁用高级缓存以减少内存占用'**
  String get lowMemoryModeDescription;

  /// No description provided for @lowLatencyAudio.
  ///
  /// In zh, this message translates to:
  /// **'低延迟音频'**
  String get lowLatencyAudio;

  /// No description provided for @lowLatencyAudioDescription.
  ///
  /// In zh, this message translates to:
  /// **'启用 OpenSLES 音频输出以降低延时'**
  String get lowLatencyAudioDescription;

  /// No description provided for @superResolution.
  ///
  /// In zh, this message translates to:
  /// **'超分辨率'**
  String get superResolution;

  /// No description provided for @playbackBehavior.
  ///
  /// In zh, this message translates to:
  /// **'播放行为'**
  String get playbackBehavior;

  /// No description provided for @backgroundPlayback.
  ///
  /// In zh, this message translates to:
  /// **'后台播放'**
  String get backgroundPlayback;

  /// No description provided for @backgroundPlaybackDescription.
  ///
  /// In zh, this message translates to:
  /// **'应用退到后台或熄屏时继续播放音频'**
  String get backgroundPlaybackDescription;

  /// No description provided for @resumePlayback.
  ///
  /// In zh, this message translates to:
  /// **'自动跳转'**
  String get resumePlayback;

  /// No description provided for @resumePlaybackDescription.
  ///
  /// In zh, this message translates to:
  /// **'跳转到上次播放位置'**
  String get resumePlaybackDescription;

  /// No description provided for @autoPlayNext.
  ///
  /// In zh, this message translates to:
  /// **'自动连播'**
  String get autoPlayNext;

  /// No description provided for @autoPlayNextDescription.
  ///
  /// In zh, this message translates to:
  /// **'当前视频播放完毕后自动播放下一集'**
  String get autoPlayNextDescription;

  /// No description provided for @autoPictureInPicture.
  ///
  /// In zh, this message translates to:
  /// **'自动进入画中画'**
  String get autoPictureInPicture;

  /// No description provided for @autoPictureInPictureDescription.
  ///
  /// In zh, this message translates to:
  /// **'切到后台时自动进入画中画'**
  String get autoPictureInPictureDescription;

  /// No description provided for @adFiltering.
  ///
  /// In zh, this message translates to:
  /// **'广告过滤'**
  String get adFiltering;

  /// No description provided for @adFilteringDescription.
  ///
  /// In zh, this message translates to:
  /// **'强制启用 HLS 广告过滤，忽略规则设置'**
  String get adFilteringDescription;

  /// No description provided for @disableAnimations.
  ///
  /// In zh, this message translates to:
  /// **'禁用动画'**
  String get disableAnimations;

  /// No description provided for @disableAnimationsDescription.
  ///
  /// In zh, this message translates to:
  /// **'禁用播放器内的过渡动画'**
  String get disableAnimationsDescription;

  /// No description provided for @swipeGestures.
  ///
  /// In zh, this message translates to:
  /// **'滑动手势'**
  String get swipeGestures;

  /// No description provided for @swipeGesturesDescription.
  ///
  /// In zh, this message translates to:
  /// **'竖向滑动调节音量和亮度'**
  String get swipeGesturesDescription;

  /// No description provided for @privateMode.
  ///
  /// In zh, this message translates to:
  /// **'隐身模式'**
  String get privateMode;

  /// No description provided for @privateModeDescription.
  ///
  /// In zh, this message translates to:
  /// **'不保留观看记录'**
  String get privateModeDescription;

  /// No description provided for @diagnostics.
  ///
  /// In zh, this message translates to:
  /// **'诊断'**
  String get diagnostics;

  /// No description provided for @playerErrorMessages.
  ///
  /// In zh, this message translates to:
  /// **'错误提示'**
  String get playerErrorMessages;

  /// No description provided for @playerErrorMessagesDescription.
  ///
  /// In zh, this message translates to:
  /// **'显示播放器内部错误提示'**
  String get playerErrorMessagesDescription;

  /// No description provided for @debugMode.
  ///
  /// In zh, this message translates to:
  /// **'调试模式'**
  String get debugMode;

  /// No description provided for @debugModeDescription.
  ///
  /// In zh, this message translates to:
  /// **'记录播放器内部日志'**
  String get debugModeDescription;

  /// No description provided for @logLevel.
  ///
  /// In zh, this message translates to:
  /// **'日志等级'**
  String get logLevel;

  /// No description provided for @logLevelDescription.
  ///
  /// In zh, this message translates to:
  /// **'播放器内部日志等级'**
  String get logLevelDescription;

  /// No description provided for @logLevelError.
  ///
  /// In zh, this message translates to:
  /// **'错误'**
  String get logLevelError;

  /// No description provided for @logLevelWarning.
  ///
  /// In zh, this message translates to:
  /// **'警告'**
  String get logLevelWarning;

  /// No description provided for @logLevelBrief.
  ///
  /// In zh, this message translates to:
  /// **'简略'**
  String get logLevelBrief;

  /// No description provided for @logLevelDetailed.
  ///
  /// In zh, this message translates to:
  /// **'详细'**
  String get logLevelDetailed;

  /// No description provided for @playbackParameters.
  ///
  /// In zh, this message translates to:
  /// **'播放参数'**
  String get playbackParameters;

  /// No description provided for @defaultPlaybackSpeed.
  ///
  /// In zh, this message translates to:
  /// **'默认倍速'**
  String get defaultPlaybackSpeed;

  /// No description provided for @holdPlaybackSpeed.
  ///
  /// In zh, this message translates to:
  /// **'长按倍速'**
  String get holdPlaybackSpeed;

  /// No description provided for @holdPlaybackSpeedDescription.
  ///
  /// In zh, this message translates to:
  /// **'长按屏幕或按住方向键时的倍速'**
  String get holdPlaybackSpeedDescription;

  /// No description provided for @arrowKeySeek.
  ///
  /// In zh, this message translates to:
  /// **'方向键跳转'**
  String get arrowKeySeek;

  /// No description provided for @arrowKeySeekDescription.
  ///
  /// In zh, this message translates to:
  /// **'左右方向键的快进/快退秒数'**
  String get arrowKeySeekDescription;

  /// No description provided for @skipDuration.
  ///
  /// In zh, this message translates to:
  /// **'跳过时长'**
  String get skipDuration;

  /// No description provided for @skipDurationDescription.
  ///
  /// In zh, this message translates to:
  /// **'顶栏跳过按钮的秒数'**
  String get skipDurationDescription;

  /// No description provided for @topButtonSkipDuration.
  ///
  /// In zh, this message translates to:
  /// **'顶部按钮快进时长'**
  String get topButtonSkipDuration;

  /// No description provided for @controlsHideDelay.
  ///
  /// In zh, this message translates to:
  /// **'控制栏消失时间'**
  String get controlsHideDelay;

  /// No description provided for @controlsHideDelayDescription.
  ///
  /// In zh, this message translates to:
  /// **'播放控制器自动隐藏前的停留时长'**
  String get controlsHideDelayDescription;

  /// No description provided for @defaultVideoFit.
  ///
  /// In zh, this message translates to:
  /// **'默认视频比例'**
  String get defaultVideoFit;

  /// No description provided for @videoFitAutomatic.
  ///
  /// In zh, this message translates to:
  /// **'自动'**
  String get videoFitAutomatic;

  /// No description provided for @videoFitCrop.
  ///
  /// In zh, this message translates to:
  /// **'裁切填充'**
  String get videoFitCrop;

  /// No description provided for @videoFitStretch.
  ///
  /// In zh, this message translates to:
  /// **'拉伸填充'**
  String get videoFitStretch;

  /// No description provided for @restoreDefaultSettings.
  ///
  /// In zh, this message translates to:
  /// **'恢复默认设置'**
  String get restoreDefaultSettings;

  /// No description provided for @restorePlaybackSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'将播放相关设置恢复为默认值'**
  String get restorePlaybackSettingsDescription;

  /// No description provided for @unsupportedDecoderFallback.
  ///
  /// In zh, this message translates to:
  /// **'选择不受支持的解码器将回退到软件解码'**
  String get unsupportedDecoderFallback;

  /// No description provided for @decoderAny.
  ///
  /// In zh, this message translates to:
  /// **'启用任意可用解码器'**
  String get decoderAny;

  /// No description provided for @decoderBest.
  ///
  /// In zh, this message translates to:
  /// **'启用最佳解码器'**
  String get decoderBest;

  /// No description provided for @decoderBestCopy.
  ///
  /// In zh, this message translates to:
  /// **'启用带拷贝功能的最佳解码器'**
  String get decoderBestCopy;

  /// No description provided for @decoderWindows8.
  ///
  /// In zh, this message translates to:
  /// **'DirectX 11（Windows 8 及以上）'**
  String get decoderWindows8;

  /// No description provided for @decoderWindows7.
  ///
  /// In zh, this message translates to:
  /// **'DXVA2（Windows 7 及以上）'**
  String get decoderWindows7;

  /// No description provided for @decoderNoDirect.
  ///
  /// In zh, this message translates to:
  /// **'{name}（非直通）'**
  String decoderNoDirect(String name);

  /// No description provided for @decoderNvidiaOnly.
  ///
  /// In zh, this message translates to:
  /// **'{name}（NVIDIA 独占）'**
  String decoderNvidiaOnly(String name);

  /// No description provided for @decoderExperimental.
  ///
  /// In zh, this message translates to:
  /// **'{name}（全平台、实验性）'**
  String decoderExperimental(String name);

  /// No description provided for @decoderDeprecated.
  ///
  /// In zh, this message translates to:
  /// **'{name}（过时）'**
  String decoderDeprecated(String name);

  /// No description provided for @decoderRockchip.
  ///
  /// In zh, this message translates to:
  /// **'Rockchip MPP（仅部分 Rockchip 芯片）'**
  String get decoderRockchip;

  /// No description provided for @rendererAutomatic.
  ///
  /// In zh, this message translates to:
  /// **'自动选择'**
  String get rendererAutomatic;

  /// No description provided for @rendererGpu.
  ///
  /// In zh, this message translates to:
  /// **'基于 OpenGL，通用和稳健的选项'**
  String get rendererGpu;

  /// No description provided for @rendererGpuNext.
  ///
  /// In zh, this message translates to:
  /// **'基于 Vulkan，在新设备上表现最好'**
  String get rendererGpuNext;

  /// No description provided for @rendererMediaCodec.
  ///
  /// In zh, this message translates to:
  /// **'功耗最低，不支持超分辨率'**
  String get rendererMediaCodec;

  /// No description provided for @selectRendererDescription.
  ///
  /// In zh, this message translates to:
  /// **'选择合适的渲染器以获得最佳播放体验'**
  String get selectRendererDescription;

  /// No description provided for @superResolutionRequirement.
  ///
  /// In zh, this message translates to:
  /// **'超分辨率需要启用硬件解码；若启用后仍不生效，请尝试将视频渲染器切换为 gpu。'**
  String get superResolutionRequirement;

  /// No description provided for @defaultBehavior.
  ///
  /// In zh, this message translates to:
  /// **'默认行为'**
  String get defaultBehavior;

  /// No description provided for @disablePrompt.
  ///
  /// In zh, this message translates to:
  /// **'关闭提示'**
  String get disablePrompt;

  /// No description provided for @disableSuperResolutionPromptDescription.
  ///
  /// In zh, this message translates to:
  /// **'关闭每次启用超分辨率时的提示'**
  String get disableSuperResolutionPromptDescription;

  /// No description provided for @superResolutionOff.
  ///
  /// In zh, this message translates to:
  /// **'关闭'**
  String get superResolutionOff;

  /// No description provided for @superResolutionOffDescription.
  ///
  /// In zh, this message translates to:
  /// **'默认禁用超分辨率'**
  String get superResolutionOffDescription;

  /// No description provided for @superResolutionEfficiency.
  ///
  /// In zh, this message translates to:
  /// **'效率档'**
  String get superResolutionEfficiency;

  /// No description provided for @superResolutionEfficiencyDescription.
  ///
  /// In zh, this message translates to:
  /// **'默认启用基于 Anime4K 的超分辨率（效率优先）'**
  String get superResolutionEfficiencyDescription;

  /// No description provided for @superResolutionQuality.
  ///
  /// In zh, this message translates to:
  /// **'质量档'**
  String get superResolutionQuality;

  /// No description provided for @superResolutionQualityDescription.
  ///
  /// In zh, this message translates to:
  /// **'默认启用基于 Anime4K 的超分辨率（质量优先）'**
  String get superResolutionQualityDescription;

  /// No description provided for @restoreDefaultDanmakuSettings.
  ///
  /// In zh, this message translates to:
  /// **'恢复默认弹幕设置'**
  String get restoreDefaultDanmakuSettings;

  /// No description provided for @restoreDefaultDanmakuSettingsConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'弹幕来源、显示和样式设置将恢复为默认值，关键词屏蔽列表不会被清空。'**
  String get restoreDefaultDanmakuSettingsConfirmation;

  /// No description provided for @defaultDanmakuSettingsRestored.
  ///
  /// In zh, this message translates to:
  /// **'已恢复默认弹幕设置'**
  String get defaultDanmakuSettingsRestored;

  /// No description provided for @danmakuSource.
  ///
  /// In zh, this message translates to:
  /// **'弹幕来源'**
  String get danmakuSource;

  /// No description provided for @danDanPlay.
  ///
  /// In zh, this message translates to:
  /// **'弹弹play'**
  String get danDanPlay;

  /// No description provided for @danmakuBlocking.
  ///
  /// In zh, this message translates to:
  /// **'弹幕屏蔽'**
  String get danmakuBlocking;

  /// No description provided for @keywordBlocking.
  ///
  /// In zh, this message translates to:
  /// **'关键词屏蔽'**
  String get keywordBlocking;

  /// No description provided for @danmakuDisplay.
  ///
  /// In zh, this message translates to:
  /// **'弹幕显示'**
  String get danmakuDisplay;

  /// No description provided for @danmakuArea.
  ///
  /// In zh, this message translates to:
  /// **'弹幕区域'**
  String get danmakuArea;

  /// No description provided for @danmakuDuration.
  ///
  /// In zh, this message translates to:
  /// **'弹幕持续时间'**
  String get danmakuDuration;

  /// No description provided for @duration.
  ///
  /// In zh, this message translates to:
  /// **'持续时间'**
  String get duration;

  /// No description provided for @lineHeight.
  ///
  /// In zh, this message translates to:
  /// **'行高'**
  String get lineHeight;

  /// No description provided for @danmakuLineHeight.
  ///
  /// In zh, this message translates to:
  /// **'弹幕行高'**
  String get danmakuLineHeight;

  /// No description provided for @danmakuFollowSpeed.
  ///
  /// In zh, this message translates to:
  /// **'弹幕跟随视频倍速'**
  String get danmakuFollowSpeed;

  /// No description provided for @followPlaybackSpeed.
  ///
  /// In zh, this message translates to:
  /// **'跟随视频倍速'**
  String get followPlaybackSpeed;

  /// No description provided for @danmakuFollowSpeedDescription.
  ///
  /// In zh, this message translates to:
  /// **'开启后弹幕速度会随视频倍速而改变'**
  String get danmakuFollowSpeedDescription;

  /// No description provided for @followPlaybackSpeedDescription.
  ///
  /// In zh, this message translates to:
  /// **'弹幕速度随视频倍速变化'**
  String get followPlaybackSpeedDescription;

  /// No description provided for @topDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'顶部弹幕'**
  String get topDanmaku;

  /// No description provided for @bottomDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'底部弹幕'**
  String get bottomDanmaku;

  /// No description provided for @scrollingDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'滚动弹幕'**
  String get scrollingDanmaku;

  /// No description provided for @massiveDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'海量弹幕'**
  String get massiveDanmaku;

  /// No description provided for @massiveDanmakuDescription.
  ///
  /// In zh, this message translates to:
  /// **'弹幕过多时进行叠加绘制'**
  String get massiveDanmakuDescription;

  /// No description provided for @danmakuDeduplication.
  ///
  /// In zh, this message translates to:
  /// **'弹幕去重'**
  String get danmakuDeduplication;

  /// No description provided for @danmakuDeduplicationDescription.
  ///
  /// In zh, this message translates to:
  /// **'相同内容弹幕过多时合并为一条弹幕'**
  String get danmakuDeduplicationDescription;

  /// No description provided for @danmakuStyle.
  ///
  /// In zh, this message translates to:
  /// **'弹幕样式'**
  String get danmakuStyle;

  /// No description provided for @danmakuBorder.
  ///
  /// In zh, this message translates to:
  /// **'弹幕描边'**
  String get danmakuBorder;

  /// No description provided for @danmakuBorderWidth.
  ///
  /// In zh, this message translates to:
  /// **'弹幕描边粗细'**
  String get danmakuBorderWidth;

  /// No description provided for @danmakuColor.
  ///
  /// In zh, this message translates to:
  /// **'弹幕颜色'**
  String get danmakuColor;

  /// No description provided for @fontSize.
  ///
  /// In zh, this message translates to:
  /// **'字体大小'**
  String get fontSize;

  /// No description provided for @fontWeight.
  ///
  /// In zh, this message translates to:
  /// **'字体字重'**
  String get fontWeight;

  /// No description provided for @danmakuOpacity.
  ///
  /// In zh, this message translates to:
  /// **'弹幕不透明度'**
  String get danmakuOpacity;

  /// No description provided for @restoreDanmakuSettingsDescription.
  ///
  /// In zh, this message translates to:
  /// **'将弹幕相关设置恢复为默认值'**
  String get restoreDanmakuSettingsDescription;

  /// No description provided for @danmakuSettingsSheetDescription.
  ///
  /// In zh, this message translates to:
  /// **'调整弹幕显示、样式与屏蔽规则'**
  String get danmakuSettingsSheetDescription;

  /// No description provided for @timelineOffset.
  ///
  /// In zh, this message translates to:
  /// **'时间轴偏移'**
  String get timelineOffset;

  /// No description provided for @danmakuTimeOffset.
  ///
  /// In zh, this message translates to:
  /// **'弹幕时间轴偏移'**
  String get danmakuTimeOffset;

  /// No description provided for @danmakuTimeOffsetDescription.
  ///
  /// In zh, this message translates to:
  /// **'校准弹幕相对于视频画面的显示时间'**
  String get danmakuTimeOffsetDescription;

  /// No description provided for @noOffset.
  ///
  /// In zh, this message translates to:
  /// **'无偏移'**
  String get noOffset;

  /// No description provided for @advance.
  ///
  /// In zh, this message translates to:
  /// **'提前'**
  String get advance;

  /// No description provided for @delay.
  ///
  /// In zh, this message translates to:
  /// **'延后'**
  String get delay;

  /// No description provided for @offsetWithDuration.
  ///
  /// In zh, this message translates to:
  /// **'{direction} {duration}'**
  String offsetWithDuration(String direction, String duration);

  /// No description provided for @advanceOneSecond.
  ///
  /// In zh, this message translates to:
  /// **'提前 1 秒'**
  String get advanceOneSecond;

  /// No description provided for @delayOneSecond.
  ///
  /// In zh, this message translates to:
  /// **'延后 1 秒'**
  String get delayOneSecond;

  /// No description provided for @restoreNoOffset.
  ///
  /// In zh, this message translates to:
  /// **'恢复无偏移'**
  String get restoreNoOffset;

  /// No description provided for @danmakuShieldDescription.
  ///
  /// In zh, this message translates to:
  /// **'使用关键词或正则表达式过滤弹幕'**
  String get danmakuShieldDescription;

  /// No description provided for @addBlockingRule.
  ///
  /// In zh, this message translates to:
  /// **'添加屏蔽规则'**
  String get addBlockingRule;

  /// No description provided for @regexBlockingDescription.
  ///
  /// In zh, this message translates to:
  /// **'以“/”开头和结尾将视作正则表达式，如“/\\d+/”表示屏蔽所有数字'**
  String get regexBlockingDescription;

  /// No description provided for @blockingRuleHint.
  ///
  /// In zh, this message translates to:
  /// **'输入关键词或正则表达式'**
  String get blockingRuleHint;

  /// No description provided for @add.
  ///
  /// In zh, this message translates to:
  /// **'添加'**
  String get add;

  /// No description provided for @blockingRuleCount.
  ///
  /// In zh, this message translates to:
  /// **'已添加 {count} 个关键词'**
  String blockingRuleCount(int count);

  /// No description provided for @displayRefreshRateSettings.
  ///
  /// In zh, this message translates to:
  /// **'屏幕帧率设置'**
  String get displayRefreshRateSettings;

  /// No description provided for @restartIfRefreshRateNotApplied.
  ///
  /// In zh, this message translates to:
  /// **'没有生效？请尝试重启应用'**
  String get restartIfRefreshRateNotApplied;

  /// No description provided for @automatic.
  ///
  /// In zh, this message translates to:
  /// **'自动'**
  String get automatic;

  /// No description provided for @systemActive.
  ///
  /// In zh, this message translates to:
  /// **'系统'**
  String get systemActive;

  /// No description provided for @badCertificate.
  ///
  /// In zh, this message translates to:
  /// **'证书有误！'**
  String get badCertificate;

  /// No description provided for @serverErrorRetry.
  ///
  /// In zh, this message translates to:
  /// **'服务器异常，请稍后重试！'**
  String get serverErrorRetry;

  /// No description provided for @requestCancelledRetry.
  ///
  /// In zh, this message translates to:
  /// **'请求已被取消，请重新请求'**
  String get requestCancelledRetry;

  /// No description provided for @connectionErrorCheckSettings.
  ///
  /// In zh, this message translates to:
  /// **'连接错误，请检查网络设置'**
  String get connectionErrorCheckSettings;

  /// No description provided for @connectionTimeoutCheckSettings.
  ///
  /// In zh, this message translates to:
  /// **'网络连接超时，请检查网络设置'**
  String get connectionTimeoutCheckSettings;

  /// No description provided for @responseTimeoutRetry.
  ///
  /// In zh, this message translates to:
  /// **'响应超时，请稍后重试！'**
  String get responseTimeoutRetry;

  /// No description provided for @sendTimeoutCheckSettings.
  ///
  /// In zh, this message translates to:
  /// **'发送请求超时，请检查网络设置'**
  String get sendTimeoutCheckSettings;

  /// No description provided for @responseParseTimeoutRetry.
  ///
  /// In zh, this message translates to:
  /// **'响应解析超时，请稍后重试！'**
  String get responseParseTimeoutRetry;

  /// No description provided for @networkException.
  ///
  /// In zh, this message translates to:
  /// **'{connection} 网络异常'**
  String networkException(String connection);

  /// No description provided for @responseParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'响应解析失败'**
  String get responseParseFailed;

  /// No description provided for @usingMobileData.
  ///
  /// In zh, this message translates to:
  /// **'正在使用移动流量'**
  String get usingMobileData;

  /// No description provided for @usingWifi.
  ///
  /// In zh, this message translates to:
  /// **'正在使用 Wi-Fi'**
  String get usingWifi;

  /// No description provided for @usingEthernet.
  ///
  /// In zh, this message translates to:
  /// **'正在使用局域网'**
  String get usingEthernet;

  /// No description provided for @usingVpn.
  ///
  /// In zh, this message translates to:
  /// **'正在使用代理网络'**
  String get usingVpn;

  /// No description provided for @usingOtherNetwork.
  ///
  /// In zh, this message translates to:
  /// **'正在使用其他网络'**
  String get usingOtherNetwork;

  /// No description provided for @notConnected.
  ///
  /// In zh, this message translates to:
  /// **'未连接到任何网络'**
  String get notConnected;

  /// No description provided for @enterKeyword.
  ///
  /// In zh, this message translates to:
  /// **'请输入关键词'**
  String get enterKeyword;

  /// No description provided for @keywordTooLong.
  ///
  /// In zh, this message translates to:
  /// **'关键词过长'**
  String get keywordTooLong;

  /// No description provided for @keywordAlreadyExists.
  ///
  /// In zh, this message translates to:
  /// **'已存在该关键词'**
  String get keywordAlreadyExists;

  /// No description provided for @updateCheckFailedRetry.
  ///
  /// In zh, this message translates to:
  /// **'检查更新失败，请稍后重试'**
  String get updateCheckFailedRetry;

  /// No description provided for @playerLoadFailedTryAnotherSource.
  ///
  /// In zh, this message translates to:
  /// **'加载失败，请尝试更换其他视频来源'**
  String get playerLoadFailedTryAnotherSource;

  /// No description provided for @noAvailableCache.
  ///
  /// In zh, this message translates to:
  /// **'未找到可用缓存'**
  String get noAvailableCache;

  /// No description provided for @onlineSourceUnavailable.
  ///
  /// In zh, this message translates to:
  /// **'在线源不可用，请重新选择播放源'**
  String get onlineSourceUnavailable;

  /// No description provided for @launchingExternalPlayer.
  ///
  /// In zh, this message translates to:
  /// **'尝试唤起外部播放器'**
  String get launchingExternalPlayer;

  /// No description provided for @externalPlayerLaunchFailed.
  ///
  /// In zh, this message translates to:
  /// **'唤起外部播放器失败'**
  String get externalPlayerLaunchFailed;

  /// No description provided for @systemAppPickerUnavailable.
  ///
  /// In zh, this message translates to:
  /// **'系统应用选择器不可用'**
  String get systemAppPickerUnavailable;

  /// No description provided for @deviceUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'暂不支持该设备'**
  String get deviceUnsupported;

  /// No description provided for @ruleUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'暂不支持该规则'**
  String get ruleUnsupported;

  /// No description provided for @downloadService.
  ///
  /// In zh, this message translates to:
  /// **'下载服务'**
  String get downloadService;

  /// No description provided for @downloadServiceDescription.
  ///
  /// In zh, this message translates to:
  /// **'视频下载后台服务'**
  String get downloadServiceDescription;

  /// No description provided for @downloading.
  ///
  /// In zh, this message translates to:
  /// **'正在下载'**
  String get downloading;

  /// No description provided for @preparing.
  ///
  /// In zh, this message translates to:
  /// **'准备中...'**
  String get preparing;

  /// No description provided for @pauseAll.
  ///
  /// In zh, this message translates to:
  /// **'暂停全部'**
  String get pauseAll;

  /// No description provided for @downloadPaused.
  ///
  /// In zh, this message translates to:
  /// **'下载已暂停'**
  String get downloadPaused;

  /// No description provided for @taskCount.
  ///
  /// In zh, this message translates to:
  /// **'共 {count} 个任务'**
  String taskCount(int count);

  /// No description provided for @downloadingProgress.
  ///
  /// In zh, this message translates to:
  /// **'正在下载（{active}/{total}）'**
  String downloadingProgress(int active, int total);

  /// No description provided for @insufficientStorage.
  ///
  /// In zh, this message translates to:
  /// **'存储空间不足'**
  String get insufficientStorage;

  /// No description provided for @insufficientStorageRetry.
  ///
  /// In zh, this message translates to:
  /// **'存储空间不足，请清理后重试'**
  String get insufficientStorageRetry;

  /// No description provided for @storagePermissionDenied.
  ///
  /// In zh, this message translates to:
  /// **'存储权限被拒绝'**
  String get storagePermissionDenied;

  /// No description provided for @storageReadOnly.
  ///
  /// In zh, this message translates to:
  /// **'存储为只读，无法写入'**
  String get storageReadOnly;

  /// No description provided for @storageErrorMessage.
  ///
  /// In zh, this message translates to:
  /// **'存储错误：{message}'**
  String storageErrorMessage(String message);

  /// No description provided for @liveStreamDownloadUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'不支持下载直播流（无有效分片）'**
  String get liveStreamDownloadUnsupported;

  /// No description provided for @m3u8NoSegments.
  ///
  /// In zh, this message translates to:
  /// **'M3U8 中未找到可下载的分片'**
  String get m3u8NoSegments;

  /// No description provided for @segmentDownloadFailed.
  ///
  /// In zh, this message translates to:
  /// **'{count} 个分片下载失败'**
  String segmentDownloadFailed(int count);

  /// No description provided for @insufficientStorageAvailable.
  ///
  /// In zh, this message translates to:
  /// **'存储空间不足（可用：{available}）'**
  String insufficientStorageAvailable(String available);

  /// No description provided for @urlNotM3u8.
  ///
  /// In zh, this message translates to:
  /// **'URL 不是 M3U8 播放列表'**
  String get urlNotM3u8;

  /// No description provided for @responseTooLargeNotM3u8.
  ///
  /// In zh, this message translates to:
  /// **'响应过大，不是 M3U8 播放列表'**
  String get responseTooLargeNotM3u8;

  /// No description provided for @timedShutdown.
  ///
  /// In zh, this message translates to:
  /// **'定时关闭'**
  String get timedShutdown;

  /// No description provided for @timedShutdownExpired.
  ///
  /// In zh, this message translates to:
  /// **'定时时间已到，视频已暂停'**
  String get timedShutdownExpired;

  /// No description provided for @timerRestarted.
  ///
  /// In zh, this message translates to:
  /// **'已重新开始 {minutes} 分钟定时'**
  String timerRestarted(int minutes);

  /// No description provided for @repeat.
  ///
  /// In zh, this message translates to:
  /// **'重复'**
  String get repeat;

  /// No description provided for @close.
  ///
  /// In zh, this message translates to:
  /// **'关闭'**
  String get close;

  /// No description provided for @hoursAndMinutes.
  ///
  /// In zh, this message translates to:
  /// **'{hours} 小时 {minutes} 分钟'**
  String hoursAndMinutes(int hours, int minutes);

  /// No description provided for @hourCount.
  ///
  /// In zh, this message translates to:
  /// **'{hours} 小时'**
  String hourCount(int hours);

  /// No description provided for @minuteCount.
  ///
  /// In zh, this message translates to:
  /// **'{minutes} 分钟'**
  String minuteCount(int minutes);

  /// No description provided for @customTimer.
  ///
  /// In zh, this message translates to:
  /// **'自定义定时'**
  String get customTimer;

  /// No description provided for @selectValidTime.
  ///
  /// In zh, this message translates to:
  /// **'请选择有效的时间'**
  String get selectValidTime;

  /// No description provided for @timedShutdownSet.
  ///
  /// In zh, this message translates to:
  /// **'已设置 {duration} 后定时关闭'**
  String timedShutdownSet(String duration);

  /// No description provided for @hoursShort.
  ///
  /// In zh, this message translates to:
  /// **'时'**
  String get hoursShort;

  /// No description provided for @minutesShort.
  ///
  /// In zh, this message translates to:
  /// **'分'**
  String get minutesShort;

  /// No description provided for @bangumiDeleteUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 不支持删除收藏'**
  String get bangumiDeleteUnsupported;

  /// No description provided for @bangumiDeleteExplanation.
  ///
  /// In zh, this message translates to:
  /// **'因为安全考虑，Bangumi 未提供删除接口。您可以把本地和远端收藏标记为“抛弃”，或仅删除本地收藏并打开网页手动删除 Bangumi 数据。'**
  String get bangumiDeleteExplanation;

  /// No description provided for @openWebPage.
  ///
  /// In zh, this message translates to:
  /// **'打开网页'**
  String get openWebPage;

  /// No description provided for @markAsAbandoned.
  ///
  /// In zh, this message translates to:
  /// **'标记为抛弃'**
  String get markAsAbandoned;

  /// No description provided for @bangumiPageOpenFailed.
  ///
  /// In zh, this message translates to:
  /// **'无法打开 Bangumi 网页'**
  String get bangumiPageOpenFailed;

  /// No description provided for @bangumiNotInitializedChangeCancelled.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 未初始化，同步失败，已取消本次状态修改'**
  String get bangumiNotInitializedChangeCancelled;

  /// No description provided for @syncingToBangumi.
  ///
  /// In zh, this message translates to:
  /// **'正在同步到 Bangumi…'**
  String get syncingToBangumi;

  /// No description provided for @syncedToBangumi.
  ///
  /// In zh, this message translates to:
  /// **'已同步到 Bangumi'**
  String get syncedToBangumi;

  /// No description provided for @bangumiSyncFailedChangeCancelled.
  ///
  /// In zh, this message translates to:
  /// **'同步到 Bangumi 失败，已取消本次状态修改'**
  String get bangumiSyncFailedChangeCancelled;

  /// No description provided for @bangumiSyncFailedChangeCancelledWithError.
  ///
  /// In zh, this message translates to:
  /// **'同步到 Bangumi 失败，已取消本次状态修改：{error}'**
  String bangumiSyncFailedChangeCancelledWithError(String error);

  /// No description provided for @webDavCollectSyncDisabled.
  ///
  /// In zh, this message translates to:
  /// **'未开启 WebDAV 收藏同步'**
  String get webDavCollectSyncDisabled;

  /// No description provided for @webDavDisabledOrInvalid.
  ///
  /// In zh, this message translates to:
  /// **'未开启 WebDAV 同步或配置无效'**
  String get webDavDisabledOrInvalid;

  /// No description provided for @webDavConnectionFailed.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 连接失败：{error}'**
  String webDavConnectionFailed(String error);

  /// No description provided for @webDavSyncComplete.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 同步完成'**
  String get webDavSyncComplete;

  /// No description provided for @webDavSyncFailed.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 同步失败：{error}'**
  String webDavSyncFailed(String error);

  /// No description provided for @webDavUploadComplete.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 上传完成'**
  String get webDavUploadComplete;

  /// No description provided for @webDavUploadFailed.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 上传失败：{error}'**
  String webDavUploadFailed(String error);

  /// No description provided for @bangumiSyncDisabledEnableInSettings.
  ///
  /// In zh, this message translates to:
  /// **'未开启 Bangumi 同步，请先在设置中启用'**
  String get bangumiSyncDisabledEnableInSettings;

  /// No description provided for @bangumiSyncNotInitializedCheckToken.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 同步已开启但未初始化，请检查 Token 后重试'**
  String get bangumiSyncNotInitializedCheckToken;

  /// No description provided for @bangumiSyncComplete.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 同步完成'**
  String get bangumiSyncComplete;

  /// No description provided for @noSyncDifferences.
  ///
  /// In zh, this message translates to:
  /// **'未发现状态差异，无需同步'**
  String get noSyncDifferences;

  /// No description provided for @bangumiSyncFailed.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 同步失败：{error}'**
  String bangumiSyncFailed(String error);

  /// No description provided for @bangumiAccessFailed.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 访问失败：{error}'**
  String bangumiAccessFailed(String error);

  /// No description provided for @enterBangumiAccessToken.
  ///
  /// In zh, this message translates to:
  /// **'请先填写 Bangumi Access Token'**
  String get enterBangumiAccessToken;

  /// No description provided for @bangumiOperationInProgress.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi：当前有操作正在进行，请稍后再试'**
  String get bangumiOperationInProgress;

  /// No description provided for @bangumiUsernameFailed.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi：获取用户名失败'**
  String get bangumiUsernameFailed;

  /// No description provided for @syncDisabled.
  ///
  /// In zh, this message translates to:
  /// **'同步已关闭'**
  String get syncDisabled;

  /// No description provided for @bangumiSyncInProgress.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 正在同步'**
  String get bangumiSyncInProgress;

  /// No description provided for @startingBangumiSync.
  ///
  /// In zh, this message translates to:
  /// **'开始同步 Bangumi 状态'**
  String get startingBangumiSync;

  /// No description provided for @uploadingLocalStatus.
  ///
  /// In zh, this message translates to:
  /// **'正在上传本地新增状态'**
  String get uploadingLocalStatus;

  /// No description provided for @uploadLocalStatusFailed.
  ///
  /// In zh, this message translates to:
  /// **'上传本地新增状态失败'**
  String get uploadLocalStatusFailed;

  /// No description provided for @bangumiItemUploadFailed.
  ///
  /// In zh, this message translates to:
  /// **'同步失败：条目 {id} 上传到 Bangumi 失败'**
  String bangumiItemUploadFailed(int id);

  /// No description provided for @fillingMissingLocalStatus.
  ///
  /// In zh, this message translates to:
  /// **'正在补全本地缺失状态'**
  String get fillingMissingLocalStatus;

  /// No description provided for @resolvingConflictsLocalFirst.
  ///
  /// In zh, this message translates to:
  /// **'本地优先：正在处理冲突状态'**
  String get resolvingConflictsLocalFirst;

  /// No description provided for @resolvingConflictsBangumiFirst.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 优先：正在处理冲突状态'**
  String get resolvingConflictsBangumiFirst;

  /// No description provided for @bangumiStatusSyncComplete.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 状态同步完成'**
  String get bangumiStatusSyncComplete;

  /// No description provided for @enterWebDavUrl.
  ///
  /// In zh, this message translates to:
  /// **'请先填写 WebDAV URL'**
  String get enterWebDavUrl;

  /// No description provided for @episodeNumber.
  ///
  /// In zh, this message translates to:
  /// **'第{number}集'**
  String episodeNumber(int number);

  /// No description provided for @episodeParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'集数解析失败'**
  String get episodeParseFailed;

  /// No description provided for @episodeNotDownloaded.
  ///
  /// In zh, this message translates to:
  /// **'该集数未下载'**
  String get episodeNotDownloaded;

  /// No description provided for @danmakuLoadFailedManualSearch.
  ///
  /// In zh, this message translates to:
  /// **'弹幕加载失败，可手动检索'**
  String get danmakuLoadFailedManualSearch;

  /// No description provided for @videoParseTimeoutRetry.
  ///
  /// In zh, this message translates to:
  /// **'视频解析超时，请重试'**
  String get videoParseTimeoutRetry;

  /// No description provided for @videoParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'视频解析失败：{error}'**
  String videoParseFailed(String error);

  /// No description provided for @playlistNumber.
  ///
  /// In zh, this message translates to:
  /// **'播放列表{number}'**
  String playlistNumber(int number);

  /// No description provided for @syncPlayInvalidServer.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：服务器地址不合法 {endpoint}'**
  String syncPlayInvalidServer(String endpoint);

  /// No description provided for @syncPlayInterrupted.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：同步中断 {message}'**
  String syncPlayInterrupted(String message);

  /// No description provided for @reconnect.
  ///
  /// In zh, this message translates to:
  /// **'重新连接'**
  String get reconnect;

  /// No description provided for @syncPlayOnlyUser.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：您是当前房间中的唯一用户'**
  String get syncPlayOnlyUser;

  /// No description provided for @syncPlayFollowingUser.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：当前以用户 {username} 的进度为准'**
  String syncPlayFollowingUser(String username);

  /// No description provided for @syncPlayUserLeft.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：{username} 离开了房间'**
  String syncPlayUserLeft(String username);

  /// No description provided for @syncPlayUserJoined.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：{username} 加入了房间'**
  String syncPlayUserJoined(String username);

  /// No description provided for @unknownUser.
  ///
  /// In zh, this message translates to:
  /// **'未知用户'**
  String get unknownUser;

  /// No description provided for @syncPlayEpisodeChanged.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：{username} 切换到第 {episode} 话'**
  String syncPlayEpisodeChanged(String username, int episode);

  /// No description provided for @syncPlayPaused.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：{username} 暂停了播放'**
  String syncPlayPaused(String username);

  /// No description provided for @syncPlayStarted.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：{username} 开始了播放'**
  String syncPlayStarted(String username);

  /// No description provided for @syncPlayConnectionFailed.
  ///
  /// In zh, this message translates to:
  /// **'SyncPlay：连接失败 {message}'**
  String syncPlayConnectionFailed(String message);

  /// No description provided for @playerInternalError.
  ///
  /// In zh, this message translates to:
  /// **'播放器内部错误：{error} {url}'**
  String playerInternalError(String error, String url);

  /// No description provided for @mobileDataLowMemoryMode.
  ///
  /// In zh, this message translates to:
  /// **'正在使用移动数据，已临时启用低内存模式以减少缓存'**
  String get mobileDataLowMemoryMode;

  /// No description provided for @remoteCasting.
  ///
  /// In zh, this message translates to:
  /// **'远程投屏'**
  String get remoteCasting;

  /// No description provided for @exit.
  ///
  /// In zh, this message translates to:
  /// **'退出'**
  String get exit;

  /// No description provided for @startSearching.
  ///
  /// In zh, this message translates to:
  /// **'开始搜索'**
  String get startSearching;

  /// No description provided for @castingToDevice.
  ///
  /// In zh, this message translates to:
  /// **'尝试投屏至 {device}'**
  String castingToDevice(String device);

  /// No description provided for @dlnaErrorRetry.
  ///
  /// In zh, this message translates to:
  /// **'DLNA 异常：{error}\n请尝试重新进入 DLNA 投屏或切换设备'**
  String dlnaErrorRetry(String error);

  /// No description provided for @search.
  ///
  /// In zh, this message translates to:
  /// **'搜索'**
  String get search;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
