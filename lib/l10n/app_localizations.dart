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

  /// No description provided for @filter.
  ///
  /// In zh, this message translates to:
  /// **'筛选'**
  String get filter;

  /// No description provided for @imageSearch.
  ///
  /// In zh, this message translates to:
  /// **'图片搜索'**
  String get imageSearch;

  /// No description provided for @tagFilter.
  ///
  /// In zh, this message translates to:
  /// **'标签：{tag}'**
  String tagFilter(String tag);

  /// No description provided for @sortFilter.
  ///
  /// In zh, this message translates to:
  /// **'排序：{sort}'**
  String sortFilter(String sort);

  /// No description provided for @seasonFilter.
  ///
  /// In zh, this message translates to:
  /// **'季度：{season}'**
  String seasonFilter(String season);

  /// No description provided for @dateFilter.
  ///
  /// In zh, this message translates to:
  /// **'日期：{range}'**
  String dateFilter(String range);

  /// No description provided for @rankFilter.
  ///
  /// In zh, this message translates to:
  /// **'排名：{range}'**
  String rankFilter(String range);

  /// No description provided for @scoreFilter.
  ///
  /// In zh, this message translates to:
  /// **'评分：{range}'**
  String scoreFilter(String range);

  /// No description provided for @weekdayFilter.
  ///
  /// In zh, this message translates to:
  /// **'星期：{weekdays}'**
  String weekdayFilter(String weekdays);

  /// No description provided for @hideWatched.
  ///
  /// In zh, this message translates to:
  /// **'隐藏已看'**
  String get hideWatched;

  /// No description provided for @hideAbandoned.
  ///
  /// In zh, this message translates to:
  /// **'隐藏已弃'**
  String get hideAbandoned;

  /// No description provided for @noSearchSuggestions.
  ///
  /// In zh, this message translates to:
  /// **'暂无搜索建议，按回车直接检索'**
  String get noSearchSuggestions;

  /// No description provided for @nothingFound.
  ///
  /// In zh, this message translates to:
  /// **'什么都没有找到 (;´༎ຶД༎ຶ`)'**
  String get nothingFound;

  /// No description provided for @tapToRetry.
  ///
  /// In zh, this message translates to:
  /// **'点击重试'**
  String get tapToRetry;

  /// No description provided for @filterConditions.
  ///
  /// In zh, this message translates to:
  /// **'筛选条件'**
  String get filterConditions;

  /// No description provided for @filterConditionsDescription.
  ///
  /// In zh, this message translates to:
  /// **'组合标签、季度和评分等条件，更快找到想看的番剧。'**
  String get filterConditionsDescription;

  /// No description provided for @sort.
  ///
  /// In zh, this message translates to:
  /// **'排序'**
  String get sort;

  /// No description provided for @sortDescription.
  ///
  /// In zh, this message translates to:
  /// **'选择列表优先展示的内容。'**
  String get sortDescription;

  /// No description provided for @sortHeat.
  ///
  /// In zh, this message translates to:
  /// **'热度'**
  String get sortHeat;

  /// No description provided for @sortRank.
  ///
  /// In zh, this message translates to:
  /// **'排名'**
  String get sortRank;

  /// No description provided for @sortScore.
  ///
  /// In zh, this message translates to:
  /// **'评分'**
  String get sortScore;

  /// No description provided for @sortMatch.
  ///
  /// In zh, this message translates to:
  /// **'匹配'**
  String get sortMatch;

  /// No description provided for @tags.
  ///
  /// In zh, this message translates to:
  /// **'标签'**
  String get tags;

  /// No description provided for @tagsDescription.
  ///
  /// In zh, this message translates to:
  /// **'选择多个标签时，会优先寻找同时包含这些标签的番剧。'**
  String get tagsDescription;

  /// No description provided for @customTag.
  ///
  /// In zh, this message translates to:
  /// **'自定义标签'**
  String get customTag;

  /// No description provided for @addTag.
  ///
  /// In zh, this message translates to:
  /// **'添加标签'**
  String get addTag;

  /// No description provided for @clearTags.
  ///
  /// In zh, this message translates to:
  /// **'清空标签'**
  String get clearTags;

  /// No description provided for @seasonAndDate.
  ///
  /// In zh, this message translates to:
  /// **'季度与日期'**
  String get seasonAndDate;

  /// No description provided for @seasonAndDateDescription.
  ///
  /// In zh, this message translates to:
  /// **'按播出季度查找，也可以指定更精确的日期范围。'**
  String get seasonAndDateDescription;

  /// No description provided for @season.
  ///
  /// In zh, this message translates to:
  /// **'季度'**
  String get season;

  /// No description provided for @customDate.
  ///
  /// In zh, this message translates to:
  /// **'自定义日期'**
  String get customDate;

  /// No description provided for @anyDate.
  ///
  /// In zh, this message translates to:
  /// **'不限日期'**
  String get anyDate;

  /// No description provided for @numericRange.
  ///
  /// In zh, this message translates to:
  /// **'数值范围'**
  String get numericRange;

  /// No description provided for @numericRangeDescription.
  ///
  /// In zh, this message translates to:
  /// **'只显示符合评分或排名范围的番剧。'**
  String get numericRangeDescription;

  /// No description provided for @enableScoreRange.
  ///
  /// In zh, this message translates to:
  /// **'启用评分范围'**
  String get enableScoreRange;

  /// No description provided for @enableRankRange.
  ///
  /// In zh, this message translates to:
  /// **'启用排名范围'**
  String get enableRankRange;

  /// No description provided for @weekday.
  ///
  /// In zh, this message translates to:
  /// **'星期'**
  String get weekday;

  /// No description provided for @weekdayDescription.
  ///
  /// In zh, this message translates to:
  /// **'按放送星期过滤，多个星期按任一匹配处理。'**
  String get weekdayDescription;

  /// No description provided for @weekdayNumber.
  ///
  /// In zh, this message translates to:
  /// **'周{number}'**
  String weekdayNumber(int number);

  /// No description provided for @filterSection.
  ///
  /// In zh, this message translates to:
  /// **'过滤'**
  String get filterSection;

  /// No description provided for @filterSectionDescription.
  ///
  /// In zh, this message translates to:
  /// **'控制是否隐藏已经看过或放弃的番剧。'**
  String get filterSectionDescription;

  /// No description provided for @reset.
  ///
  /// In zh, this message translates to:
  /// **'重置'**
  String get reset;

  /// No description provided for @apply.
  ///
  /// In zh, this message translates to:
  /// **'应用'**
  String get apply;

  /// No description provided for @winter.
  ///
  /// In zh, this message translates to:
  /// **'冬季'**
  String get winter;

  /// No description provided for @spring.
  ///
  /// In zh, this message translates to:
  /// **'春季'**
  String get spring;

  /// No description provided for @summer.
  ///
  /// In zh, this message translates to:
  /// **'夏季'**
  String get summer;

  /// No description provided for @autumn.
  ///
  /// In zh, this message translates to:
  /// **'秋季'**
  String get autumn;

  /// No description provided for @imageTooLarge.
  ///
  /// In zh, this message translates to:
  /// **'图片大小不能超过 25MB'**
  String get imageTooLarge;

  /// No description provided for @enterValidImageUrl.
  ///
  /// In zh, this message translates to:
  /// **'请输入有效的图片链接'**
  String get enterValidImageUrl;

  /// No description provided for @selectImageFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先选择图片文件'**
  String get selectImageFirst;

  /// No description provided for @unknownAnime.
  ///
  /// In zh, this message translates to:
  /// **'未知番剧'**
  String get unknownAnime;

  /// No description provided for @episodeValue.
  ///
  /// In zh, this message translates to:
  /// **'第 {episode} 集'**
  String episodeValue(String episode);

  /// No description provided for @episodesValue.
  ///
  /// In zh, this message translates to:
  /// **'剧集：{episodes}'**
  String episodesValue(String episodes);

  /// No description provided for @unknownEpisode.
  ///
  /// In zh, this message translates to:
  /// **'剧集未知'**
  String get unknownEpisode;

  /// No description provided for @switchToImageUpload.
  ///
  /// In zh, this message translates to:
  /// **'改为上传图片文件'**
  String get switchToImageUpload;

  /// No description provided for @switchToImageUrl.
  ///
  /// In zh, this message translates to:
  /// **'改为输入图片 URL'**
  String get switchToImageUrl;

  /// No description provided for @searching.
  ///
  /// In zh, this message translates to:
  /// **'搜索中…'**
  String get searching;

  /// No description provided for @startSearch.
  ///
  /// In zh, this message translates to:
  /// **'开始搜索'**
  String get startSearch;

  /// No description provided for @selectImage.
  ///
  /// In zh, this message translates to:
  /// **'点击选择图片'**
  String get selectImage;

  /// No description provided for @supportedImageFormats.
  ///
  /// In zh, this message translates to:
  /// **'支持 JPG、PNG、WEBP 格式'**
  String get supportedImageFormats;

  /// No description provided for @imagePreviewFailed.
  ///
  /// In zh, this message translates to:
  /// **'图片预览失败'**
  String get imagePreviewFailed;

  /// No description provided for @imageSelected.
  ///
  /// In zh, this message translates to:
  /// **'已选择图片'**
  String get imageSelected;

  /// No description provided for @tapToReselectImage.
  ///
  /// In zh, this message translates to:
  /// **'点击可重新选择图片'**
  String get tapToReselectImage;

  /// No description provided for @reselect.
  ///
  /// In zh, this message translates to:
  /// **'重新选择'**
  String get reselect;

  /// No description provided for @enterImageUrl.
  ///
  /// In zh, this message translates to:
  /// **'请输入图片链接'**
  String get enterImageUrl;

  /// No description provided for @clear.
  ///
  /// In zh, this message translates to:
  /// **'清除'**
  String get clear;

  /// No description provided for @imageUrlPreviewHint.
  ///
  /// In zh, this message translates to:
  /// **'输入图片链接后预览'**
  String get imageUrlPreviewHint;

  /// No description provided for @loading.
  ///
  /// In zh, this message translates to:
  /// **'加载中…'**
  String get loading;

  /// No description provided for @imageLoadFailed.
  ///
  /// In zh, this message translates to:
  /// **'图片加载失败'**
  String get imageLoadFailed;

  /// No description provided for @checkLinkValidity.
  ///
  /// In zh, this message translates to:
  /// **'请检查链接是否有效'**
  String get checkLinkValidity;

  /// No description provided for @recognizingImage.
  ///
  /// In zh, this message translates to:
  /// **'正在识别图片'**
  String get recognizingImage;

  /// No description provided for @recognizingImageDescription.
  ///
  /// In zh, this message translates to:
  /// **'请稍候，正在从截图中匹配番剧信息'**
  String get recognizingImageDescription;

  /// No description provided for @imageResultsPlaceholder.
  ///
  /// In zh, this message translates to:
  /// **'搜索结果将在这里展示'**
  String get imageResultsPlaceholder;

  /// No description provided for @noImageSearchResults.
  ///
  /// In zh, this message translates to:
  /// **'未获取到搜索结果'**
  String get noImageSearchResults;

  /// No description provided for @imageSearchStartHint.
  ///
  /// In zh, this message translates to:
  /// **'选择图片文件或输入图片链接后开始搜索'**
  String get imageSearchStartHint;

  /// No description provided for @recognitionResults.
  ///
  /// In zh, this message translates to:
  /// **'识别结果'**
  String get recognitionResults;

  /// No description provided for @similarityValue.
  ///
  /// In zh, this message translates to:
  /// **'相似度：{value}'**
  String similarityValue(String value);

  /// No description provided for @timeRangeValue.
  ///
  /// In zh, this message translates to:
  /// **'时间：{range}'**
  String timeRangeValue(String range);

  /// No description provided for @imageSearchOriginalRatioTip.
  ///
  /// In zh, this message translates to:
  /// **'仅支持使用原始比例番剧截图搜索结果'**
  String get imageSearchOriginalRatioTip;

  /// No description provided for @imageSearchQualityTip.
  ///
  /// In zh, this message translates to:
  /// **'截图应清晰，避免过度压缩或添加水印'**
  String get imageSearchQualityTip;

  /// No description provided for @searchEngineProvidedByPrefix.
  ///
  /// In zh, this message translates to:
  /// **'搜索引擎由 '**
  String get searchEngineProvidedByPrefix;

  /// No description provided for @searchEngineProvidedBySuffix.
  ///
  /// In zh, this message translates to:
  /// **' 提供支持'**
  String get searchEngineProvidedBySuffix;

  /// No description provided for @animeImageSearch.
  ///
  /// In zh, this message translates to:
  /// **'以图搜番'**
  String get animeImageSearch;

  /// No description provided for @saveRuleOrderFailed.
  ///
  /// In zh, this message translates to:
  /// **'保存规则顺序失败'**
  String get saveRuleOrderFailed;

  /// No description provided for @createRule.
  ///
  /// In zh, this message translates to:
  /// **'新建规则'**
  String get createRule;

  /// No description provided for @importFromRuleRepository.
  ///
  /// In zh, this message translates to:
  /// **'从规则仓库导入'**
  String get importFromRuleRepository;

  /// No description provided for @importFromClipboard.
  ///
  /// In zh, this message translates to:
  /// **'从剪贴板导入'**
  String get importFromClipboard;

  /// No description provided for @importFromFile.
  ///
  /// In zh, this message translates to:
  /// **'从文件导入'**
  String get importFromFile;

  /// No description provided for @importRulesFromClipboard.
  ///
  /// In zh, this message translates to:
  /// **'从剪贴板导入规则'**
  String get importRulesFromClipboard;

  /// No description provided for @ruleImportInputHint.
  ///
  /// In zh, this message translates to:
  /// **'可粘贴多条 kazumi:// 链接或 JSON 数组'**
  String get ruleImportInputHint;

  /// No description provided for @importAction.
  ///
  /// In zh, this message translates to:
  /// **'导入'**
  String get importAction;

  /// No description provided for @selectedFileUnreadable.
  ///
  /// In zh, this message translates to:
  /// **'无法读取所选文件'**
  String get selectedFileUnreadable;

  /// No description provided for @readRuleFileFailed.
  ///
  /// In zh, this message translates to:
  /// **'读取规则文件失败：{error}'**
  String readRuleFileFailed(String error);

  /// No description provided for @noRulesToImport.
  ///
  /// In zh, this message translates to:
  /// **'没有可导入的规则'**
  String get noRulesToImport;

  /// No description provided for @ruleImportSummary.
  ///
  /// In zh, this message translates to:
  /// **'导入完成：成功 {success} 条，跳过重复 {duplicates} 条，失败 {failures} 条'**
  String ruleImportSummary(int success, int duplicates, int failures);

  /// No description provided for @saveImportedRulesFailed.
  ///
  /// In zh, this message translates to:
  /// **'保存导入规则失败：{error}'**
  String saveImportedRulesFailed(String error);

  /// No description provided for @checkRuleUpdatesFailed.
  ///
  /// In zh, this message translates to:
  /// **'检查规则更新失败'**
  String get checkRuleUpdatesFailed;

  /// No description provided for @selectedItemCount.
  ///
  /// In zh, this message translates to:
  /// **'已选择 {count} 项'**
  String selectedItemCount(int count);

  /// No description provided for @deleteRules.
  ///
  /// In zh, this message translates to:
  /// **'删除规则'**
  String get deleteRules;

  /// No description provided for @deleteSelectedRulesConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'确定要删除选中的 {count} 条规则吗？'**
  String deleteSelectedRulesConfirmation(int count);

  /// No description provided for @deleteRuleFailed.
  ///
  /// In zh, this message translates to:
  /// **'删除规则失败'**
  String get deleteRuleFailed;

  /// No description provided for @delete.
  ///
  /// In zh, this message translates to:
  /// **'删除'**
  String get delete;

  /// No description provided for @updateAll.
  ///
  /// In zh, this message translates to:
  /// **'更新全部'**
  String get updateAll;

  /// No description provided for @addRule.
  ///
  /// In zh, this message translates to:
  /// **'添加规则'**
  String get addRule;

  /// No description provided for @noAvailableRules.
  ///
  /// In zh, this message translates to:
  /// **'啊咧（⊙.⊙） 没有可用规则的说'**
  String get noAvailableRules;

  /// No description provided for @updateAvailable.
  ///
  /// In zh, this message translates to:
  /// **'可更新'**
  String get updateAvailable;

  /// No description provided for @searchValid.
  ///
  /// In zh, this message translates to:
  /// **'搜索有效'**
  String get searchValid;

  /// No description provided for @ruleUpdateStatusUnavailable.
  ///
  /// In zh, this message translates to:
  /// **'尚未获取规则更新状态'**
  String get ruleUpdateStatusUnavailable;

  /// No description provided for @ruleNotInRepository.
  ///
  /// In zh, this message translates to:
  /// **'规则仓库中没有当前规则'**
  String get ruleNotInRepository;

  /// No description provided for @ruleAlreadyLatest.
  ///
  /// In zh, this message translates to:
  /// **'规则已是最新'**
  String get ruleAlreadyLatest;

  /// No description provided for @update.
  ///
  /// In zh, this message translates to:
  /// **'更新'**
  String get update;

  /// No description provided for @edit.
  ///
  /// In zh, this message translates to:
  /// **'编辑'**
  String get edit;

  /// No description provided for @test.
  ///
  /// In zh, this message translates to:
  /// **'测试'**
  String get test;

  /// No description provided for @ruleLink.
  ///
  /// In zh, this message translates to:
  /// **'规则链接'**
  String get ruleLink;

  /// No description provided for @copyToClipboard.
  ///
  /// In zh, this message translates to:
  /// **'复制到剪贴板'**
  String get copyToClipboard;

  /// No description provided for @share.
  ///
  /// In zh, this message translates to:
  /// **'分享'**
  String get share;

  /// No description provided for @updating.
  ///
  /// In zh, this message translates to:
  /// **'更新中'**
  String get updating;

  /// No description provided for @importing.
  ///
  /// In zh, this message translates to:
  /// **'导入中'**
  String get importing;

  /// No description provided for @updateRulesFailed.
  ///
  /// In zh, this message translates to:
  /// **'更新规则失败'**
  String get updateRulesFailed;

  /// No description provided for @saveRuleFailed.
  ///
  /// In zh, this message translates to:
  /// **'保存规则失败'**
  String get saveRuleFailed;

  /// No description provided for @importSucceeded.
  ///
  /// In zh, this message translates to:
  /// **'导入成功'**
  String get importSucceeded;

  /// No description provided for @updateSucceeded.
  ///
  /// In zh, this message translates to:
  /// **'更新成功'**
  String get updateSucceeded;

  /// No description provided for @ruleRequiresNewerClient.
  ///
  /// In zh, this message translates to:
  /// **'规则需要更高版本客户端'**
  String get ruleRequiresNewerClient;

  /// No description provided for @importRuleFailed.
  ///
  /// In zh, this message translates to:
  /// **'导入规则失败'**
  String get importRuleFailed;

  /// No description provided for @remoteRuleNotNewer.
  ///
  /// In zh, this message translates to:
  /// **'远程规则版本不高于本地，已跳过更新'**
  String get remoteRuleNotNewer;

  /// No description provided for @noRulesToUpdate.
  ///
  /// In zh, this message translates to:
  /// **'没有可更新的规则'**
  String get noRulesToUpdate;

  /// No description provided for @updateSuccessCount.
  ///
  /// In zh, this message translates to:
  /// **'更新成功 {count} 条'**
  String updateSuccessCount(int count);

  /// No description provided for @successCount.
  ///
  /// In zh, this message translates to:
  /// **'成功 {count} 条'**
  String successCount(int count);

  /// No description provided for @incompatibleCount.
  ///
  /// In zh, this message translates to:
  /// **'不兼容 {count} 条'**
  String incompatibleCount(int count);

  /// No description provided for @skippedCount.
  ///
  /// In zh, this message translates to:
  /// **'已跳过 {count} 条'**
  String skippedCount(int count);

  /// No description provided for @failedCount.
  ///
  /// In zh, this message translates to:
  /// **'失败 {count} 条'**
  String failedCount(int count);

  /// No description provided for @updateSummary.
  ///
  /// In zh, this message translates to:
  /// **'更新完成：{summary}'**
  String updateSummary(String summary);

  /// No description provided for @pluginTestTitle.
  ///
  /// In zh, this message translates to:
  /// **'{name} 测试'**
  String pluginTestTitle(String name);

  /// No description provided for @startTest.
  ///
  /// In zh, this message translates to:
  /// **'开始测试'**
  String get startTest;

  /// No description provided for @searchRequestTest.
  ///
  /// In zh, this message translates to:
  /// **'1. 搜索请求测试'**
  String get searchRequestTest;

  /// No description provided for @searchParseTest.
  ///
  /// In zh, this message translates to:
  /// **'2. 搜索解析测试'**
  String get searchParseTest;

  /// No description provided for @chapterListTest.
  ///
  /// In zh, this message translates to:
  /// **'3. 章节列表测试'**
  String get chapterListTest;

  /// No description provided for @testKeyword.
  ///
  /// In zh, this message translates to:
  /// **'测试关键词'**
  String get testKeyword;

  /// No description provided for @retryTest.
  ///
  /// In zh, this message translates to:
  /// **'重试测试'**
  String get retryTest;

  /// No description provided for @testing.
  ///
  /// In zh, this message translates to:
  /// **'测试中…'**
  String get testing;

  /// No description provided for @testNotRun.
  ///
  /// In zh, this message translates to:
  /// **'未执行测试'**
  String get testNotRun;

  /// No description provided for @responseLength.
  ///
  /// In zh, this message translates to:
  /// **'{format} 长度：{count} 字符'**
  String responseLength(String format, int count);

  /// No description provided for @runTestHint.
  ///
  /// In zh, this message translates to:
  /// **'点击顶部“开始测试”按钮执行'**
  String get runTestHint;

  /// No description provided for @parsing.
  ///
  /// In zh, this message translates to:
  /// **'解析中…'**
  String get parsing;

  /// No description provided for @parseNotRun.
  ///
  /// In zh, this message translates to:
  /// **'未执行解析'**
  String get parseNotRun;

  /// No description provided for @noParsedResults.
  ///
  /// In zh, this message translates to:
  /// **'未解析到结果'**
  String get noParsedResults;

  /// No description provided for @skippedSuffix.
  ///
  /// In zh, this message translates to:
  /// **'，跳过 {count} 条'**
  String skippedSuffix(int count);

  /// No description provided for @parsedResultCount.
  ///
  /// In zh, this message translates to:
  /// **'解析到 {count} 条结果{skipped}'**
  String parsedResultCount(int count, String skipped);

  /// No description provided for @completeSearchRequestFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先完成搜索请求测试'**
  String get completeSearchRequestFirst;

  /// No description provided for @noSearchResultsParsed.
  ///
  /// In zh, this message translates to:
  /// **'未解析到搜索结果'**
  String get noSearchResultsParsed;

  /// No description provided for @nodesSkipped.
  ///
  /// In zh, this message translates to:
  /// **'部分节点被跳过（{count}）'**
  String nodesSkipped(int count);

  /// No description provided for @noMatchingFragment.
  ///
  /// In zh, this message translates to:
  /// **'无匹配片段'**
  String get noMatchingFragment;

  /// No description provided for @hideMatchingFragment.
  ///
  /// In zh, this message translates to:
  /// **'隐藏匹配片段'**
  String get hideMatchingFragment;

  /// No description provided for @viewMatchingFragment.
  ///
  /// In zh, this message translates to:
  /// **'查看匹配片段'**
  String get viewMatchingFragment;

  /// No description provided for @linkValue.
  ///
  /// In zh, this message translates to:
  /// **'链接：{link}'**
  String linkValue(String link);

  /// No description provided for @fetching.
  ///
  /// In zh, this message translates to:
  /// **'获取中…'**
  String get fetching;

  /// No description provided for @noValidSearchResults.
  ///
  /// In zh, this message translates to:
  /// **'无有效搜索结果'**
  String get noValidSearchResults;

  /// No description provided for @chapterParsingNotNeeded.
  ///
  /// In zh, this message translates to:
  /// **'无需解析章节'**
  String get chapterParsingNotNeeded;

  /// No description provided for @chapterDataNotFetched.
  ///
  /// In zh, this message translates to:
  /// **'未获取章节数据'**
  String get chapterDataNotFetched;

  /// No description provided for @playbackRoadCount.
  ///
  /// In zh, this message translates to:
  /// **'获取到 {count} 个播放线路{skipped}'**
  String playbackRoadCount(int count, String skipped);

  /// No description provided for @chapterRuleMissing.
  ///
  /// In zh, this message translates to:
  /// **'未填写章节规则'**
  String get chapterRuleMissing;

  /// No description provided for @parseValidResultFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先解析到有效结果'**
  String get parseValidResultFirst;

  /// No description provided for @noAvailableChapters.
  ///
  /// In zh, this message translates to:
  /// **'无可用章节'**
  String get noAvailableChapters;

  /// No description provided for @playbackRoadTitle.
  ///
  /// In zh, this message translates to:
  /// **'播放线路 {number}：{name}'**
  String playbackRoadTitle(int number, String name);

  /// No description provided for @chapterCount.
  ///
  /// In zh, this message translates to:
  /// **'章节数量：{count}'**
  String chapterCount(int count);

  /// No description provided for @historyManagement.
  ///
  /// In zh, this message translates to:
  /// **'记录管理'**
  String get historyManagement;

  /// No description provided for @clearAllHistoryConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'确认要清除所有历史记录吗？'**
  String get clearAllHistoryConfirmation;

  /// No description provided for @history.
  ///
  /// In zh, this message translates to:
  /// **'历史记录'**
  String get history;

  /// No description provided for @exitEditMode.
  ///
  /// In zh, this message translates to:
  /// **'退出编辑'**
  String get exitEditMode;

  /// No description provided for @clearAll.
  ///
  /// In zh, this message translates to:
  /// **'清除全部'**
  String get clearAll;

  /// No description provided for @noHistory.
  ///
  /// In zh, this message translates to:
  /// **'暂无历史记录'**
  String get noHistory;

  /// No description provided for @pressBackAgainToExit.
  ///
  /// In zh, this message translates to:
  /// **'再按一次退出应用'**
  String get pressBackAgainToExit;

  /// No description provided for @agreeAndContinue.
  ///
  /// In zh, this message translates to:
  /// **'同意并继续'**
  String get agreeAndContinue;

  /// No description provided for @finish.
  ///
  /// In zh, this message translates to:
  /// **'完成'**
  String get finish;

  /// No description provided for @nextStep.
  ///
  /// In zh, this message translates to:
  /// **'下一步'**
  String get nextStep;

  /// No description provided for @previousStep.
  ///
  /// In zh, this message translates to:
  /// **'上一步'**
  String get previousStep;

  /// No description provided for @initializeRulesFailed.
  ///
  /// In zh, this message translates to:
  /// **'初始化规则失败'**
  String get initializeRulesFailed;

  /// No description provided for @updateSource.
  ///
  /// In zh, this message translates to:
  /// **'更新来源'**
  String get updateSource;

  /// No description provided for @updateSourceDescription.
  ///
  /// In zh, this message translates to:
  /// **'选择获取应用更新的方式'**
  String get updateSourceDescription;

  /// No description provided for @githubUpdateDescription.
  ///
  /// In zh, this message translates to:
  /// **'应用内检查更新，适合大多数用户'**
  String get githubUpdateDescription;

  /// No description provided for @fdroidUpdateDescription.
  ///
  /// In zh, this message translates to:
  /// **'由 F-Droid 商店管理更新'**
  String get fdroidUpdateDescription;

  /// No description provided for @networkMirrors.
  ///
  /// In zh, this message translates to:
  /// **'网络镜像'**
  String get networkMirrors;

  /// No description provided for @networkMirrorsDescription.
  ///
  /// In zh, this message translates to:
  /// **'中国大陆用户推荐启用，提升访问速度'**
  String get networkMirrorsDescription;

  /// No description provided for @bangumiMirror.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 镜像'**
  String get bangumiMirror;

  /// No description provided for @bangumiMirrorDescription.
  ///
  /// In zh, this message translates to:
  /// **'加速热门与时间表加载'**
  String get bangumiMirrorDescription;

  /// No description provided for @ruleRepositoryMirror.
  ///
  /// In zh, this message translates to:
  /// **'规则仓库镜像'**
  String get ruleRepositoryMirror;

  /// No description provided for @ruleRepositoryMirrorDescription.
  ///
  /// In zh, this message translates to:
  /// **'加速规则的下载与更新'**
  String get ruleRepositoryMirrorDescription;

  /// No description provided for @mirrorSettingsLaterHint.
  ///
  /// In zh, this message translates to:
  /// **'可稍后在 设置 → 同步设置 中修改'**
  String get mirrorSettingsLaterHint;

  /// No description provided for @disclaimerLoadFailed.
  ///
  /// In zh, this message translates to:
  /// **'免责声明加载失败，请退出后重试。'**
  String get disclaimerLoadFailed;

  /// No description provided for @welcome.
  ///
  /// In zh, this message translates to:
  /// **'欢迎使用'**
  String get welcome;

  /// No description provided for @readAndAcceptDisclaimer.
  ///
  /// In zh, this message translates to:
  /// **'请阅读并同意免责声明'**
  String get readAndAcceptDisclaimer;

  /// No description provided for @addRules.
  ///
  /// In zh, this message translates to:
  /// **'添加规则'**
  String get addRules;

  /// No description provided for @addRulesDescription.
  ///
  /// In zh, this message translates to:
  /// **'规则提供番剧搜索源，可稍后在 设置 → 规则管理 中调整'**
  String get addRulesDescription;

  /// No description provided for @popularAnime.
  ///
  /// In zh, this message translates to:
  /// **'热门番组'**
  String get popularAnime;

  /// No description provided for @watchedToEpisode.
  ///
  /// In zh, this message translates to:
  /// **'看到 {episode}'**
  String watchedToEpisode(String episode);

  /// No description provided for @clearLogsFailed.
  ///
  /// In zh, this message translates to:
  /// **'清空失败：{error}'**
  String clearLogsFailed(String error);

  /// No description provided for @copiedToClipboard.
  ///
  /// In zh, this message translates to:
  /// **'已复制到剪贴板'**
  String get copiedToClipboard;

  /// No description provided for @copyFailed.
  ///
  /// In zh, this message translates to:
  /// **'复制失败：{error}'**
  String copyFailed(String error);

  /// No description provided for @logs.
  ///
  /// In zh, this message translates to:
  /// **'日志'**
  String get logs;

  /// No description provided for @loadLogsFailed.
  ///
  /// In zh, this message translates to:
  /// **'加载日志失败'**
  String get loadLogsFailed;

  /// No description provided for @noLogs.
  ///
  /// In zh, this message translates to:
  /// **'暂无日志'**
  String get noLogs;

  /// No description provided for @clearLogs.
  ///
  /// In zh, this message translates to:
  /// **'清空日志'**
  String get clearLogs;

  /// No description provided for @copyLogs.
  ///
  /// In zh, this message translates to:
  /// **'复制日志'**
  String get copyLogs;

  /// No description provided for @bangumiMirrorLoadError.
  ///
  /// In zh, this message translates to:
  /// **'啊咧（⊙.⊙） 无法加载数据\nBangumi 镜像{status}'**
  String bangumiMirrorLoadError(String status);

  /// No description provided for @enabledStatus.
  ///
  /// In zh, this message translates to:
  /// **'已启用'**
  String get enabledStatus;

  /// No description provided for @disabledStatus.
  ///
  /// In zh, this message translates to:
  /// **'已禁用'**
  String get disabledStatus;

  /// No description provided for @mirrorSwitch.
  ///
  /// In zh, this message translates to:
  /// **'镜像开关'**
  String get mirrorSwitch;

  /// No description provided for @continueWatching.
  ///
  /// In zh, this message translates to:
  /// **'继续观看'**
  String get continueWatching;

  /// No description provided for @animeUnit.
  ///
  /// In zh, this message translates to:
  /// **'部'**
  String get animeUnit;

  /// No description provided for @episodeUnit.
  ///
  /// In zh, this message translates to:
  /// **'集'**
  String get episodeUnit;

  /// No description provided for @watchedAnime.
  ///
  /// In zh, this message translates to:
  /// **'看过番剧'**
  String get watchedAnime;

  /// No description provided for @watchedEpisodes.
  ///
  /// In zh, this message translates to:
  /// **'观看集数'**
  String get watchedEpisodes;

  /// No description provided for @offlineCache.
  ///
  /// In zh, this message translates to:
  /// **'离线缓存'**
  String get offlineCache;

  /// No description provided for @recentlyWatchedTitle.
  ///
  /// In zh, this message translates to:
  /// **'最近看到 {title}'**
  String recentlyWatchedTitle(String title);

  /// No description provided for @noWatchHistoryYet.
  ///
  /// In zh, this message translates to:
  /// **'还没有观看记录'**
  String get noWatchHistoryYet;

  /// No description provided for @offlineDownloads.
  ///
  /// In zh, this message translates to:
  /// **'离线下载'**
  String get offlineDownloads;

  /// No description provided for @downloadTasksAndLocalFiles.
  ///
  /// In zh, this message translates to:
  /// **'缓存任务与本地文件'**
  String get downloadTasksAndLocalFiles;

  /// No description provided for @settingsOverviewDescription.
  ///
  /// In zh, this message translates to:
  /// **'播放、弹幕、外观与规则'**
  String get settingsOverviewDescription;

  /// No description provided for @collectionSummaryHint.
  ///
  /// In zh, this message translates to:
  /// **'收藏番剧后会在这里汇总'**
  String get collectionSummaryHint;

  /// No description provided for @recentlyWatchedTime.
  ///
  /// In zh, this message translates to:
  /// **'最近观看 {time}'**
  String recentlyWatchedTime(String time);

  /// No description provided for @myCollection.
  ///
  /// In zh, this message translates to:
  /// **'我的追番'**
  String get myCollection;

  /// No description provided for @preparingBangumiCollectionSync.
  ///
  /// In zh, this message translates to:
  /// **'准备同步 Bangumi 收藏…'**
  String get preparingBangumiCollectionSync;

  /// No description provided for @webDavSynced.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 已同步'**
  String get webDavSynced;

  /// No description provided for @webDavNotCompleted.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 未完成'**
  String get webDavNotCompleted;

  /// No description provided for @bangumiSynced.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 已同步'**
  String get bangumiSynced;

  /// No description provided for @bangumiNotCompleted.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 未完成'**
  String get bangumiNotCompleted;

  /// No description provided for @webDavLatestDataUploaded.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 已回传最新数据'**
  String get webDavLatestDataUploaded;

  /// No description provided for @webDavLatestDataNotUploaded.
  ///
  /// In zh, this message translates to:
  /// **'WebDAV 未回传最新数据'**
  String get webDavLatestDataNotUploaded;

  /// No description provided for @syncingWebDavCollection.
  ///
  /// In zh, this message translates to:
  /// **'正在同步 WebDAV 收藏…'**
  String get syncingWebDavCollection;

  /// No description provided for @uploadingLatestCollectionToWebDav.
  ///
  /// In zh, this message translates to:
  /// **'正在回传最新收藏到 WebDAV…'**
  String get uploadingLatestCollectionToWebDav;

  /// No description provided for @syncUnavailableEnableOne.
  ///
  /// In zh, this message translates to:
  /// **'同步功能不可用，请至少开启一个同步功能'**
  String get syncUnavailableEnableOne;

  /// No description provided for @syncUnavailableInEditMode.
  ///
  /// In zh, this message translates to:
  /// **'编辑模式无法执行同步'**
  String get syncUnavailableInEditMode;

  /// No description provided for @noCollectionContent.
  ///
  /// In zh, this message translates to:
  /// **'暂无追番内容'**
  String get noCollectionContent;

  /// No description provided for @preparingCollectionSync.
  ///
  /// In zh, this message translates to:
  /// **'准备开始同步收藏…'**
  String get preparingCollectionSync;

  /// No description provided for @fullCollectionSyncInProgress.
  ///
  /// In zh, this message translates to:
  /// **'收藏全量同步中'**
  String get fullCollectionSyncInProgress;

  /// No description provided for @mondayShort.
  ///
  /// In zh, this message translates to:
  /// **'一'**
  String get mondayShort;

  /// No description provided for @tuesdayShort.
  ///
  /// In zh, this message translates to:
  /// **'二'**
  String get tuesdayShort;

  /// No description provided for @wednesdayShort.
  ///
  /// In zh, this message translates to:
  /// **'三'**
  String get wednesdayShort;

  /// No description provided for @thursdayShort.
  ///
  /// In zh, this message translates to:
  /// **'四'**
  String get thursdayShort;

  /// No description provided for @fridayShort.
  ///
  /// In zh, this message translates to:
  /// **'五'**
  String get fridayShort;

  /// No description provided for @saturdayShort.
  ///
  /// In zh, this message translates to:
  /// **'六'**
  String get saturdayShort;

  /// No description provided for @sundayShort.
  ///
  /// In zh, this message translates to:
  /// **'日'**
  String get sundayShort;

  /// No description provided for @timeMachine.
  ///
  /// In zh, this message translates to:
  /// **'时间机器'**
  String get timeMachine;

  /// No description provided for @timeMachineDescription.
  ///
  /// In zh, this message translates to:
  /// **'按季度回到任意放送季，时间线会立即切换。'**
  String get timeMachineDescription;

  /// No description provided for @currentlyViewingSeason.
  ///
  /// In zh, this message translates to:
  /// **'当前查看 {season}'**
  String currentlyViewingSeason(String season);

  /// No description provided for @yearLabel.
  ///
  /// In zh, this message translates to:
  /// **'{year}年'**
  String yearLabel(int year);

  /// No description provided for @availableSeasonCount.
  ///
  /// In zh, this message translates to:
  /// **'共 {count} 个季度可选'**
  String availableSeasonCount(int count);

  /// No description provided for @timePriority.
  ///
  /// In zh, this message translates to:
  /// **'时间优先'**
  String get timePriority;

  /// No description provided for @ratingPriority.
  ///
  /// In zh, this message translates to:
  /// **'评分优先'**
  String get ratingPriority;

  /// No description provided for @popularityPriority.
  ///
  /// In zh, this message translates to:
  /// **'热度优先'**
  String get popularityPriority;

  /// No description provided for @timelineOptions.
  ///
  /// In zh, this message translates to:
  /// **'时间线选项'**
  String get timelineOptions;

  /// No description provided for @timelineOptionsDescription.
  ///
  /// In zh, this message translates to:
  /// **'调整排序和过滤条件，结果会立即应用到当前时间线。'**
  String get timelineOptionsDescription;

  /// No description provided for @currentSort.
  ///
  /// In zh, this message translates to:
  /// **'当前排序 {sort}'**
  String currentSort(String sort);

  /// No description provided for @noFiltersEnabled.
  ///
  /// In zh, this message translates to:
  /// **'未启用过滤条件'**
  String get noFiltersEnabled;

  /// No description provided for @enabledFilterCount.
  ///
  /// In zh, this message translates to:
  /// **'已启用 {count} 个过滤条件'**
  String enabledFilterCount(int count);

  /// No description provided for @filters.
  ///
  /// In zh, this message translates to:
  /// **'过滤器'**
  String get filters;

  /// No description provided for @timelineFiltersDescription.
  ///
  /// In zh, this message translates to:
  /// **'按收藏状态收起不需要显示的条目，支持连续调整。'**
  String get timelineFiltersDescription;

  /// No description provided for @hideAbandonedAnime.
  ///
  /// In zh, this message translates to:
  /// **'不显示已抛弃的番剧'**
  String get hideAbandonedAnime;

  /// No description provided for @hideAbandonedAnimeDescription.
  ///
  /// In zh, this message translates to:
  /// **'隐藏已经标记为抛弃的条目。'**
  String get hideAbandonedAnimeDescription;

  /// No description provided for @hideWatchedAnime.
  ///
  /// In zh, this message translates to:
  /// **'不显示已看过的番剧'**
  String get hideWatchedAnime;

  /// No description provided for @hideWatchedAnimeTimelineDescription.
  ///
  /// In zh, this message translates to:
  /// **'把已经看完的条目从时间线中移除。'**
  String get hideWatchedAnimeTimelineDescription;

  /// No description provided for @onlyShowWatchingAnime.
  ///
  /// In zh, this message translates to:
  /// **'只显示在看的番剧'**
  String get onlyShowWatchingAnime;

  /// No description provided for @onlyShowWatchingAnimeDescription.
  ///
  /// In zh, this message translates to:
  /// **'聚焦当前正在追更的条目。'**
  String get onlyShowWatchingAnimeDescription;

  /// No description provided for @sortOrder.
  ///
  /// In zh, this message translates to:
  /// **'排序方式'**
  String get sortOrder;

  /// No description provided for @timelineSortDescription.
  ///
  /// In zh, this message translates to:
  /// **'选择每一天内番剧卡片的排列方式。'**
  String get timelineSortDescription;

  /// No description provided for @sortByPopularity.
  ///
  /// In zh, this message translates to:
  /// **'按热度排序'**
  String get sortByPopularity;

  /// No description provided for @sortByPopularityDescription.
  ///
  /// In zh, this message translates to:
  /// **'优先展示讨论度和关注度更高的条目。'**
  String get sortByPopularityDescription;

  /// No description provided for @sortByRating.
  ///
  /// In zh, this message translates to:
  /// **'按评分排序'**
  String get sortByRating;

  /// No description provided for @sortByRatingDescription.
  ///
  /// In zh, this message translates to:
  /// **'优先展示评分更高的条目。'**
  String get sortByRatingDescription;

  /// No description provided for @sortByTime.
  ///
  /// In zh, this message translates to:
  /// **'按时间排序'**
  String get sortByTime;

  /// No description provided for @sortByTimeDescription.
  ///
  /// In zh, this message translates to:
  /// **'恢复默认时间顺序，方便按播出节奏查看。'**
  String get sortByTimeDescription;

  /// No description provided for @videoDetails.
  ///
  /// In zh, this message translates to:
  /// **'视频详情'**
  String get videoDetails;

  /// No description provided for @videoDetailsDescription.
  ///
  /// In zh, this message translates to:
  /// **'实时播放状态与诊断信息'**
  String get videoDetailsDescription;

  /// No description provided for @status.
  ///
  /// In zh, this message translates to:
  /// **'状态'**
  String get status;

  /// No description provided for @copyAllLogs.
  ///
  /// In zh, this message translates to:
  /// **'复制全部日志'**
  String get copyAllLogs;

  /// No description provided for @playbackSource.
  ///
  /// In zh, this message translates to:
  /// **'播放源'**
  String get playbackSource;

  /// No description provided for @mediaUrl.
  ///
  /// In zh, this message translates to:
  /// **'媒体地址'**
  String get mediaUrl;

  /// No description provided for @playlist.
  ///
  /// In zh, this message translates to:
  /// **'播放列表'**
  String get playlist;

  /// No description provided for @video.
  ///
  /// In zh, this message translates to:
  /// **'视频'**
  String get video;

  /// No description provided for @resolution.
  ///
  /// In zh, this message translates to:
  /// **'分辨率'**
  String get resolution;

  /// No description provided for @videoParameters.
  ///
  /// In zh, this message translates to:
  /// **'视频参数'**
  String get videoParameters;

  /// No description provided for @videoTracks.
  ///
  /// In zh, this message translates to:
  /// **'视频轨道'**
  String get videoTracks;

  /// No description provided for @videoBitrate.
  ///
  /// In zh, this message translates to:
  /// **'视频码率'**
  String get videoBitrate;

  /// No description provided for @audio.
  ///
  /// In zh, this message translates to:
  /// **'音频'**
  String get audio;

  /// No description provided for @audioParameters.
  ///
  /// In zh, this message translates to:
  /// **'音频参数'**
  String get audioParameters;

  /// No description provided for @audioTracks.
  ///
  /// In zh, this message translates to:
  /// **'音频轨道'**
  String get audioTracks;

  /// No description provided for @audioBitrate.
  ///
  /// In zh, this message translates to:
  /// **'音频码率'**
  String get audioBitrate;

  /// No description provided for @noData.
  ///
  /// In zh, this message translates to:
  /// **'暂无数据'**
  String get noData;

  /// No description provided for @noRuntimeLogs.
  ///
  /// In zh, this message translates to:
  /// **'暂无运行日志'**
  String get noRuntimeLogs;

  /// No description provided for @loadCommentsFailed.
  ///
  /// In zh, this message translates to:
  /// **'评论获取失败'**
  String get loadCommentsFailed;

  /// No description provided for @retry.
  ///
  /// In zh, this message translates to:
  /// **'重试'**
  String get retry;

  /// No description provided for @episodeTitle.
  ///
  /// In zh, this message translates to:
  /// **'本集标题'**
  String get episodeTitle;

  /// No description provided for @switchManually.
  ///
  /// In zh, this message translates to:
  /// **'手动切换'**
  String get switchManually;

  /// No description provided for @descending.
  ///
  /// In zh, this message translates to:
  /// **'倒序'**
  String get descending;

  /// No description provided for @ascending.
  ///
  /// In zh, this message translates to:
  /// **'正序'**
  String get ascending;

  /// No description provided for @loadingEpisodeList.
  ///
  /// In zh, this message translates to:
  /// **'分集列表加载中'**
  String get loadingEpisodeList;

  /// No description provided for @episodeListNotFound.
  ///
  /// In zh, this message translates to:
  /// **'未找到分集列表'**
  String get episodeListNotFound;

  /// No description provided for @episodeList.
  ///
  /// In zh, this message translates to:
  /// **'分集列表'**
  String get episodeList;

  /// No description provided for @pictureInPictureUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'当前设备不支持画中画'**
  String get pictureInPictureUnsupported;

  /// No description provided for @enterPictureInPictureFailed.
  ///
  /// In zh, this message translates to:
  /// **'进入画中画失败'**
  String get enterPictureInPictureFailed;

  /// No description provided for @alreadyLatestEpisode.
  ///
  /// In zh, this message translates to:
  /// **'已经是最新一集'**
  String get alreadyLatestEpisode;

  /// No description provided for @alreadyFirstEpisode.
  ///
  /// In zh, this message translates to:
  /// **'已经是第一集'**
  String get alreadyFirstEpisode;

  /// No description provided for @loadingEpisode.
  ///
  /// In zh, this message translates to:
  /// **'正在加载{episode}'**
  String loadingEpisode(String episode);

  /// No description provided for @desktopScreenshotUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'桌面端暂未支持保存截图'**
  String get desktopScreenshotUnsupported;

  /// No description provided for @screenshotNoImage.
  ///
  /// In zh, this message translates to:
  /// **'截图失败：未获取到图像'**
  String get screenshotNoImage;

  /// No description provided for @screenshotSaveFailed.
  ///
  /// In zh, this message translates to:
  /// **'截图保存失败：{error}'**
  String screenshotSaveFailed(String error);

  /// No description provided for @screenshotFailed.
  ///
  /// In zh, this message translates to:
  /// **'截图失败：{error}'**
  String screenshotFailed(String error);

  /// No description provided for @compatibilityNotice.
  ///
  /// In zh, this message translates to:
  /// **'兼容性提示'**
  String get compatibilityNotice;

  /// No description provided for @mediaCodecSuperResolutionUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'MediaCodec 渲染器不支持超分辨率功能。\n\n如需使用超分辨率，请在播放设置中将视频渲染器切换为 gpu 或 gpu-next。'**
  String get mediaCodecSuperResolutionUnsupported;

  /// No description provided for @performanceNotice.
  ///
  /// In zh, this message translates to:
  /// **'性能提示'**
  String get performanceNotice;

  /// No description provided for @superResolutionPerformanceWarning.
  ///
  /// In zh, this message translates to:
  /// **'启用超分辨率（质量档）可能会造成设备卡顿，是否继续？'**
  String get superResolutionPerformanceWarning;

  /// No description provided for @maximumSpeedReached.
  ///
  /// In zh, this message translates to:
  /// **'已达倍速上限'**
  String get maximumSpeedReached;

  /// No description provided for @minimumSpeedReached.
  ///
  /// In zh, this message translates to:
  /// **'已达倍速下限'**
  String get minimumSpeedReached;

  /// No description provided for @searchingDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'弹幕检索中'**
  String get searchingDanmaku;

  /// No description provided for @danmakuSearchError.
  ///
  /// In zh, this message translates to:
  /// **'弹幕检索错误：{error}'**
  String danmakuSearchError(String error);

  /// No description provided for @noMatchingResults.
  ///
  /// In zh, this message translates to:
  /// **'未找到匹配结果'**
  String get noMatchingResults;

  /// No description provided for @tooManyDanmakuResultsHint.
  ///
  /// In zh, this message translates to:
  /// **'结果较多，仅显示部分条目，可补充更完整的番剧名缩小范围'**
  String get tooManyDanmakuResultsHint;

  /// No description provided for @danmakuSwitchSucceeded.
  ///
  /// In zh, this message translates to:
  /// **'弹幕切换成功'**
  String get danmakuSwitchSucceeded;

  /// No description provided for @noDanmakuContent.
  ///
  /// In zh, this message translates to:
  /// **'未找到弹幕内容'**
  String get noDanmakuContent;

  /// No description provided for @danmakuSwitchFailed.
  ///
  /// In zh, this message translates to:
  /// **'弹幕切换失败'**
  String get danmakuSwitchFailed;

  /// No description provided for @danmakuSearch.
  ///
  /// In zh, this message translates to:
  /// **'弹幕检索'**
  String get danmakuSearch;

  /// No description provided for @animeName.
  ///
  /// In zh, this message translates to:
  /// **'番剧名'**
  String get animeName;

  /// No description provided for @submit.
  ///
  /// In zh, this message translates to:
  /// **'提交'**
  String get submit;

  /// No description provided for @danmakuInputHint.
  ///
  /// In zh, this message translates to:
  /// **'发个友善的弹幕见证当下'**
  String get danmakuInputHint;

  /// No description provided for @danmakuDisabled.
  ///
  /// In zh, this message translates to:
  /// **'已关闭弹幕'**
  String get danmakuDisabled;

  /// No description provided for @send.
  ///
  /// In zh, this message translates to:
  /// **'发送'**
  String get send;

  /// No description provided for @playbackSpeed.
  ///
  /// In zh, this message translates to:
  /// **'播放速度'**
  String get playbackSpeed;

  /// No description provided for @defaultSpeed.
  ///
  /// In zh, this message translates to:
  /// **'默认速度'**
  String get defaultSpeed;

  /// No description provided for @skipSeconds.
  ///
  /// In zh, this message translates to:
  /// **'跳过秒数'**
  String get skipSeconds;

  /// No description provided for @danmakuLoading.
  ///
  /// In zh, this message translates to:
  /// **'弹幕加载中…'**
  String get danmakuLoading;

  /// No description provided for @closeDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'关闭弹幕'**
  String get closeDanmaku;

  /// No description provided for @openDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'打开弹幕'**
  String get openDanmaku;

  /// No description provided for @skipButtonHint.
  ///
  /// In zh, this message translates to:
  /// **'快进 {seconds} 秒，长按修改时间'**
  String skipButtonHint(int seconds);

  /// No description provided for @pause.
  ///
  /// In zh, this message translates to:
  /// **'暂停'**
  String get pause;

  /// No description provided for @play.
  ///
  /// In zh, this message translates to:
  /// **'播放'**
  String get play;

  /// No description provided for @nextEpisode.
  ///
  /// In zh, this message translates to:
  /// **'下一集'**
  String get nextEpisode;

  /// No description provided for @playbackSpeedShort.
  ///
  /// In zh, this message translates to:
  /// **'倍速'**
  String get playbackSpeedShort;

  /// No description provided for @videoAspectRatio.
  ///
  /// In zh, this message translates to:
  /// **'视频比例'**
  String get videoAspectRatio;

  /// No description provided for @episodePanel.
  ///
  /// In zh, this message translates to:
  /// **'选集面板'**
  String get episodePanel;

  /// No description provided for @back.
  ///
  /// In zh, this message translates to:
  /// **'返回'**
  String get back;

  /// No description provided for @pictureInPicture.
  ///
  /// In zh, this message translates to:
  /// **'画中画'**
  String get pictureInPicture;

  /// No description provided for @moreOptions.
  ///
  /// In zh, this message translates to:
  /// **'更多选项'**
  String get moreOptions;

  /// No description provided for @switchDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'弹幕切换'**
  String get switchDanmaku;

  /// No description provided for @externalPlayback.
  ///
  /// In zh, this message translates to:
  /// **'外部播放'**
  String get externalPlayback;

  /// No description provided for @doNotEnable.
  ///
  /// In zh, this message translates to:
  /// **'不开启'**
  String get doNotEnable;

  /// No description provided for @minutesCount.
  ///
  /// In zh, this message translates to:
  /// **'{minutes} 分钟'**
  String minutesCount(int minutes);

  /// No description provided for @custom.
  ///
  /// In zh, this message translates to:
  /// **'自定义'**
  String get custom;

  /// No description provided for @timedShutdownRemaining.
  ///
  /// In zh, this message translates to:
  /// **'定时关闭 ({remaining})'**
  String timedShutdownRemaining(String remaining);

  /// No description provided for @watchTogether.
  ///
  /// In zh, this message translates to:
  /// **'一起看'**
  String get watchTogether;

  /// No description provided for @unlockPanel.
  ///
  /// In zh, this message translates to:
  /// **'解锁面板'**
  String get unlockPanel;

  /// No description provided for @lockPanel.
  ///
  /// In zh, this message translates to:
  /// **'锁定面板'**
  String get lockPanel;

  /// No description provided for @watchTogetherDescription.
  ///
  /// In zh, this message translates to:
  /// **'与好友同步播放、暂停与选集'**
  String get watchTogetherDescription;

  /// No description provided for @cancelConnection.
  ///
  /// In zh, this message translates to:
  /// **'取消连接'**
  String get cancelConnection;

  /// No description provided for @disconnect.
  ///
  /// In zh, this message translates to:
  /// **'断开连接'**
  String get disconnect;

  /// No description provided for @connecting.
  ///
  /// In zh, this message translates to:
  /// **'正在连接'**
  String get connecting;

  /// No description provided for @createRoom.
  ///
  /// In zh, this message translates to:
  /// **'创建房间'**
  String get createRoom;

  /// No description provided for @createRoomDescription.
  ///
  /// In zh, this message translates to:
  /// **'生成房间号并邀请好友'**
  String get createRoomDescription;

  /// No description provided for @joinRoom.
  ///
  /// In zh, this message translates to:
  /// **'加入房间'**
  String get joinRoom;

  /// No description provided for @joinRoomDescription.
  ///
  /// In zh, this message translates to:
  /// **'已有好友的房间号'**
  String get joinRoomDescription;

  /// No description provided for @syncServer.
  ///
  /// In zh, this message translates to:
  /// **'同步服务器'**
  String get syncServer;

  /// No description provided for @currentRoom.
  ///
  /// In zh, this message translates to:
  /// **'当前房间'**
  String get currentRoom;

  /// No description provided for @networkLatency.
  ///
  /// In zh, this message translates to:
  /// **'网络延迟'**
  String get networkLatency;

  /// No description provided for @shareRoomHint.
  ///
  /// In zh, this message translates to:
  /// **'分享房间号，好友即可加入'**
  String get shareRoomHint;

  /// No description provided for @shareRoomNumberWithFriends.
  ///
  /// In zh, this message translates to:
  /// **'将房间号分享给好友'**
  String get shareRoomNumberWithFriends;

  /// No description provided for @enterFriendsRoomNumber.
  ///
  /// In zh, this message translates to:
  /// **'输入好友的房间号'**
  String get enterFriendsRoomNumber;

  /// No description provided for @createAndJoin.
  ///
  /// In zh, this message translates to:
  /// **'创建并加入'**
  String get createAndJoin;

  /// No description provided for @roomNumber.
  ///
  /// In zh, this message translates to:
  /// **'房间号'**
  String get roomNumber;

  /// No description provided for @regenerate.
  ///
  /// In zh, this message translates to:
  /// **'重新生成'**
  String get regenerate;

  /// No description provided for @roomNumberHint.
  ///
  /// In zh, this message translates to:
  /// **'6-10 位数字'**
  String get roomNumberHint;

  /// No description provided for @enterRoomNumber.
  ///
  /// In zh, this message translates to:
  /// **'请输入房间号'**
  String get enterRoomNumber;

  /// No description provided for @invalidRoomNumber.
  ///
  /// In zh, this message translates to:
  /// **'房间号为 6-10 位数字'**
  String get invalidRoomNumber;

  /// No description provided for @nickname.
  ///
  /// In zh, this message translates to:
  /// **'昵称'**
  String get nickname;

  /// No description provided for @nicknameHint.
  ///
  /// In zh, this message translates to:
  /// **'4-12 位英文字母，房间内可见'**
  String get nicknameHint;

  /// No description provided for @enterNickname.
  ///
  /// In zh, this message translates to:
  /// **'请输入昵称'**
  String get enterNickname;

  /// No description provided for @invalidNickname.
  ///
  /// In zh, this message translates to:
  /// **'昵称为 4-12 位英文字母'**
  String get invalidNickname;

  /// No description provided for @customServer.
  ///
  /// In zh, this message translates to:
  /// **'自定义服务器'**
  String get customServer;

  /// No description provided for @serverAddressFormatHint.
  ///
  /// In zh, this message translates to:
  /// **'地址格式为 host:port'**
  String get serverAddressFormatHint;

  /// No description provided for @sameServerRequired.
  ///
  /// In zh, this message translates to:
  /// **'房间成员需使用同一服务器'**
  String get sameServerRequired;

  /// No description provided for @save.
  ///
  /// In zh, this message translates to:
  /// **'保存'**
  String get save;

  /// No description provided for @serverAddress.
  ///
  /// In zh, this message translates to:
  /// **'服务器地址'**
  String get serverAddress;

  /// No description provided for @copied.
  ///
  /// In zh, this message translates to:
  /// **'已复制'**
  String get copied;

  /// No description provided for @copy.
  ///
  /// In zh, this message translates to:
  /// **'复制'**
  String get copy;

  /// No description provided for @downloadManagement.
  ///
  /// In zh, this message translates to:
  /// **'下载管理'**
  String get downloadManagement;

  /// No description provided for @noDownloads.
  ///
  /// In zh, this message translates to:
  /// **'暂无下载内容'**
  String get noDownloads;

  /// No description provided for @resumingDownloads.
  ///
  /// In zh, this message translates to:
  /// **'已开始恢复下载'**
  String get resumingDownloads;

  /// No description provided for @downloadCompletedSize.
  ///
  /// In zh, this message translates to:
  /// **'已完成 · {size}'**
  String downloadCompletedSize(String size);

  /// No description provided for @downloadSegmentProgress.
  ///
  /// In zh, this message translates to:
  /// **'{completed}/{total} 分片{speed}'**
  String downloadSegmentProgress(int completed, int total, String speed);

  /// No description provided for @downloadFailed.
  ///
  /// In zh, this message translates to:
  /// **'下载失败'**
  String get downloadFailed;

  /// No description provided for @downloadPausedPercent.
  ///
  /// In zh, this message translates to:
  /// **'已暂停 · {percent}%'**
  String downloadPausedPercent(String percent);

  /// No description provided for @queued.
  ///
  /// In zh, this message translates to:
  /// **'排队中'**
  String get queued;

  /// No description provided for @parsingVideoSource.
  ///
  /// In zh, this message translates to:
  /// **'正在解析视频源'**
  String get parsingVideoSource;

  /// No description provided for @resume.
  ///
  /// In zh, this message translates to:
  /// **'继续'**
  String get resume;

  /// No description provided for @downloadPrioritized.
  ///
  /// In zh, this message translates to:
  /// **'已插队优先下载'**
  String get downloadPrioritized;

  /// No description provided for @prioritizeDownload.
  ///
  /// In zh, this message translates to:
  /// **'优先下载'**
  String get prioritizeDownload;

  /// No description provided for @localFileMissing.
  ///
  /// In zh, this message translates to:
  /// **'本地文件不存在'**
  String get localFileMissing;

  /// No description provided for @deleteDownload.
  ///
  /// In zh, this message translates to:
  /// **'删除下载'**
  String get deleteDownload;

  /// No description provided for @deleteEpisodeDownloadConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'确定要删除「{episode}」的下载文件吗？'**
  String deleteEpisodeDownloadConfirmation(String episode);

  /// No description provided for @deleteAllDownloads.
  ///
  /// In zh, this message translates to:
  /// **'删除全部下载'**
  String get deleteAllDownloads;

  /// No description provided for @deleteAllAnimeDownloadsConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'确定要删除「{anime}」的所有下载文件吗？'**
  String deleteAllAnimeDownloadsConfirmation(String anime);

  /// No description provided for @selectEpisodesToDownload.
  ///
  /// In zh, this message translates to:
  /// **'下载选集'**
  String get selectEpisodesToDownload;

  /// No description provided for @downloadEpisodeCountWithAdded.
  ///
  /// In zh, this message translates to:
  /// **'共 {total} 集 · {added} 集已加入下载'**
  String downloadEpisodeCountWithAdded(int total, int added);

  /// No description provided for @totalEpisodeCount.
  ///
  /// In zh, this message translates to:
  /// **'共 {count} 集'**
  String totalEpisodeCount(int count);

  /// No description provided for @deselectAll.
  ///
  /// In zh, this message translates to:
  /// **'取消全选'**
  String get deselectAll;

  /// No description provided for @selectAll.
  ///
  /// In zh, this message translates to:
  /// **'全选'**
  String get selectAll;

  /// No description provided for @startDownload.
  ///
  /// In zh, this message translates to:
  /// **'开始下载'**
  String get startDownload;

  /// No description provided for @downloadSelectedEpisodes.
  ///
  /// In zh, this message translates to:
  /// **'下载 {count} 集'**
  String downloadSelectedEpisodes(int count);

  /// No description provided for @episodesAddedToDownloadQueue.
  ///
  /// In zh, this message translates to:
  /// **'已添加 {count} 集到下载队列，可在下载管理中查看'**
  String episodesAddedToDownloadQueue(int count);

  /// No description provided for @completedDownloadCount.
  ///
  /// In zh, this message translates to:
  /// **'{completed}/{total} 已完成'**
  String completedDownloadCount(int completed, int total);

  /// No description provided for @activeDownloadCountSuffix.
  ///
  /// In zh, this message translates to:
  /// **' · {count} 项进行中'**
  String activeDownloadCountSuffix(int count);

  /// No description provided for @moreActions.
  ///
  /// In zh, this message translates to:
  /// **'更多操作'**
  String get moreActions;

  /// No description provided for @startAll.
  ///
  /// In zh, this message translates to:
  /// **'全部开始'**
  String get startAll;

  /// No description provided for @deleteAll.
  ///
  /// In zh, this message translates to:
  /// **'全部删除'**
  String get deleteAll;

  /// No description provided for @pluginNotFound.
  ///
  /// In zh, this message translates to:
  /// **'找不到插件 {name}'**
  String pluginNotFound(String name);

  /// No description provided for @parseVideoSourceTimedOut.
  ///
  /// In zh, this message translates to:
  /// **'解析视频源超时'**
  String get parseVideoSourceTimedOut;

  /// No description provided for @cached.
  ///
  /// In zh, this message translates to:
  /// **'缓存'**
  String get cached;

  /// No description provided for @online.
  ///
  /// In zh, this message translates to:
  /// **'在线'**
  String get online;

  /// No description provided for @editMode.
  ///
  /// In zh, this message translates to:
  /// **'编辑模式'**
  String get editMode;

  /// No description provided for @animeDetails.
  ///
  /// In zh, this message translates to:
  /// **'番剧详情'**
  String get animeDetails;

  /// No description provided for @deleteRecord.
  ///
  /// In zh, this message translates to:
  /// **'删除记录'**
  String get deleteRecord;

  /// No description provided for @myComment.
  ///
  /// In zh, this message translates to:
  /// **'我的吐槽'**
  String get myComment;

  /// No description provided for @commentDeleted.
  ///
  /// In zh, this message translates to:
  /// **'该评论已被删除'**
  String get commentDeleted;

  /// No description provided for @ratingBreakdown.
  ///
  /// In zh, this message translates to:
  /// **'评分透视'**
  String get ratingBreakdown;

  /// No description provided for @ratingVotePercentage.
  ///
  /// In zh, this message translates to:
  /// **'{percentage}% ({count}人)'**
  String ratingVotePercentage(String percentage, int count);

  /// No description provided for @broadcastStart.
  ///
  /// In zh, this message translates to:
  /// **'放送开始'**
  String get broadcastStart;

  /// No description provided for @peopleRated.
  ///
  /// In zh, this message translates to:
  /// **'{count} 人评分：'**
  String peopleRated(int count);

  /// No description provided for @hiddenPeopleRated.
  ///
  /// In zh, this message translates to:
  /// **'*** 人评分：'**
  String get hiddenPeopleRated;

  /// No description provided for @initializationFailed.
  ///
  /// In zh, this message translates to:
  /// **'初始化失败'**
  String get initializationFailed;

  /// No description provided for @invalidImagePreviewParameters.
  ///
  /// In zh, this message translates to:
  /// **'图片预览参数无效，请返回后重试。'**
  String get invalidImagePreviewParameters;

  /// No description provided for @returnHome.
  ///
  /// In zh, this message translates to:
  /// **'返回首页'**
  String get returnHome;

  /// No description provided for @notificationPermissionRequired.
  ///
  /// In zh, this message translates to:
  /// **'需要通知权限'**
  String get notificationPermissionRequired;

  /// No description provided for @notificationPermissionDescription.
  ///
  /// In zh, this message translates to:
  /// **'开启通知权限后，可以在后台下载时显示进度，并防止系统终止下载任务。\n\n如果拒绝，下载功能仍可使用，但在后台时可能被系统中断。'**
  String get notificationPermissionDescription;

  /// No description provided for @notNow.
  ///
  /// In zh, this message translates to:
  /// **'稍后再说'**
  String get notNow;

  /// No description provided for @allow.
  ///
  /// In zh, this message translates to:
  /// **'允许'**
  String get allow;

  /// No description provided for @bangumiInitializationFailed.
  ///
  /// In zh, this message translates to:
  /// **'初始化 Bangumi 失败，已关闭 Bangumi 同步：{error}'**
  String bangumiInitializationFailed(String error);

  /// No description provided for @x11EnvironmentDetected.
  ///
  /// In zh, this message translates to:
  /// **'X11 环境检测'**
  String get x11EnvironmentDetected;

  /// No description provided for @x11EnvironmentWarning.
  ///
  /// In zh, this message translates to:
  /// **'检测到您当前运行在 X11 环境下，Kazumi 可能出现性能问题或界面异常，建议切换到 Wayland。是否继续使用？'**
  String get x11EnvironmentWarning;

  /// No description provided for @continueAction.
  ///
  /// In zh, this message translates to:
  /// **'继续'**
  String get continueAction;

  /// No description provided for @createDesktopShortcut.
  ///
  /// In zh, this message translates to:
  /// **'创建桌面快捷方式'**
  String get createDesktopShortcut;

  /// No description provided for @createDesktopShortcutConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'是否在桌面创建 Kazumi 的快捷方式？'**
  String get createDesktopShortcutConfirmation;

  /// No description provided for @doNotCreateNow.
  ///
  /// In zh, this message translates to:
  /// **'暂不创建'**
  String get doNotCreateNow;

  /// No description provided for @create.
  ///
  /// In zh, this message translates to:
  /// **'创建'**
  String get create;

  /// No description provided for @desktopShortcutCreated.
  ///
  /// In zh, this message translates to:
  /// **'桌面快捷方式已创建'**
  String get desktopShortcutCreated;

  /// No description provided for @desktopShortcutCreationFailed.
  ///
  /// In zh, this message translates to:
  /// **'桌面快捷方式创建失败'**
  String get desktopShortcutCreationFailed;

  /// No description provided for @ruleUpdatesAvailable.
  ///
  /// In zh, this message translates to:
  /// **'检测到 {count} 条规则可以更新'**
  String ruleUpdatesAvailable(int count);

  /// No description provided for @webDavEditor.
  ///
  /// In zh, this message translates to:
  /// **'WEBDAV 编辑'**
  String get webDavEditor;

  /// No description provided for @configurationFailed.
  ///
  /// In zh, this message translates to:
  /// **'配置失败：{error}'**
  String configurationFailed(String error);

  /// No description provided for @configurationSucceededTesting.
  ///
  /// In zh, this message translates to:
  /// **'配置成功，开始测试'**
  String get configurationSucceededTesting;

  /// No description provided for @testFailedWithError.
  ///
  /// In zh, this message translates to:
  /// **'测试失败：{error}'**
  String testFailedWithError(String error);

  /// No description provided for @syncingWatchHistory.
  ///
  /// In zh, this message translates to:
  /// **'正在同步观看记录'**
  String get syncingWatchHistory;

  /// No description provided for @watchHistorySyncCompleted.
  ///
  /// In zh, this message translates to:
  /// **'观看记录同步完成'**
  String get watchHistorySyncCompleted;

  /// No description provided for @watchHistorySyncFailed.
  ///
  /// In zh, this message translates to:
  /// **'观看记录同步失败：{error}'**
  String watchHistorySyncFailed(String error);

  /// No description provided for @ruleRepository.
  ///
  /// In zh, this message translates to:
  /// **'规则仓库'**
  String get ruleRepository;

  /// No description provided for @ruleRepositoryMirrorSettingDescription.
  ///
  /// In zh, this message translates to:
  /// **'使用镜像访问规则更新和管理仓库'**
  String get ruleRepositoryMirrorSettingDescription;

  /// No description provided for @bangumiMirrorSettingDescription.
  ///
  /// In zh, this message translates to:
  /// **'使用缓存后端加载榜单'**
  String get bangumiMirrorSettingDescription;

  /// No description provided for @configureBangumiTokenFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先配置 Bangumi 的 Access Token'**
  String get configureBangumiTokenFirst;

  /// No description provided for @bangumiInitializationRetryLater.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 初始化失败，请稍后再试'**
  String get bangumiInitializationRetryLater;

  /// No description provided for @bangumiSync.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 同步'**
  String get bangumiSync;

  /// No description provided for @bangumiSyncDescription.
  ///
  /// In zh, this message translates to:
  /// **'与 Bangumi 自动同步追番状态'**
  String get bangumiSyncDescription;

  /// No description provided for @bangumiConfiguration.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 配置'**
  String get bangumiConfiguration;

  /// No description provided for @webDavInitializationFailed.
  ///
  /// In zh, this message translates to:
  /// **'WEBDAV 初始化失败：{error}'**
  String webDavInitializationFailed(String error);

  /// No description provided for @webDavSync.
  ///
  /// In zh, this message translates to:
  /// **'WEBDAV 同步'**
  String get webDavSync;

  /// No description provided for @enableWebDavSyncFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先开启 WEBDAV 同步'**
  String get enableWebDavSyncFirst;

  /// No description provided for @watchHistorySync.
  ///
  /// In zh, this message translates to:
  /// **'观看记录同步'**
  String get watchHistorySync;

  /// No description provided for @watchHistorySyncDescription.
  ///
  /// In zh, this message translates to:
  /// **'允许自动同步观看记录'**
  String get watchHistorySyncDescription;

  /// No description provided for @collectionSync.
  ///
  /// In zh, this message translates to:
  /// **'收藏同步'**
  String get collectionSync;

  /// No description provided for @collectionSyncDescription.
  ///
  /// In zh, this message translates to:
  /// **'允许 WebDAV 参与追番状态同步'**
  String get collectionSyncDescription;

  /// No description provided for @webDavConfiguration.
  ///
  /// In zh, this message translates to:
  /// **'WEBDAV 配置'**
  String get webDavConfiguration;

  /// No description provided for @syncWatchHistoryNow.
  ///
  /// In zh, this message translates to:
  /// **'立即同步观看记录'**
  String get syncWatchHistoryNow;

  /// No description provided for @mergeWatchHistoryWithWebDav.
  ///
  /// In zh, this message translates to:
  /// **'与 WEBDAV 双向合并观看记录'**
  String get mergeWatchHistoryWithWebDav;

  /// No description provided for @enableBangumiSyncFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先开启 Bangumi 同步'**
  String get enableBangumiSyncFirst;

  /// No description provided for @syncOptions.
  ///
  /// In zh, this message translates to:
  /// **'同步选项'**
  String get syncOptions;

  /// No description provided for @immediateSyncPrompt.
  ///
  /// In zh, this message translates to:
  /// **'即时同步提示'**
  String get immediateSyncPrompt;

  /// No description provided for @immediateSyncPromptDescription.
  ///
  /// In zh, this message translates to:
  /// **'点击追番按钮触发即时同步时显示提示框'**
  String get immediateSyncPromptDescription;

  /// No description provided for @syncPriority.
  ///
  /// In zh, this message translates to:
  /// **'同步优先级'**
  String get syncPriority;

  /// No description provided for @syncPriorityDescription.
  ///
  /// In zh, this message translates to:
  /// **'当本地与 Bangumi 状态不一致时优先使用哪个状态'**
  String get syncPriorityDescription;

  /// No description provided for @syncStatusNow.
  ///
  /// In zh, this message translates to:
  /// **'立即同步状态'**
  String get syncStatusNow;

  /// No description provided for @syncStatusNowDescription.
  ///
  /// In zh, this message translates to:
  /// **'同步状态不一致或仅存在于本地/远端的条目'**
  String get syncStatusNowDescription;

  /// No description provided for @cannotOpenLink.
  ///
  /// In zh, this message translates to:
  /// **'无法打开链接'**
  String get cannotOpenLink;

  /// No description provided for @generateBangumiAccessTokenHint.
  ///
  /// In zh, this message translates to:
  /// **'点击此处前往 Bangumi 生成 Access Token'**
  String get generateBangumiAccessTokenHint;

  /// No description provided for @accessTokenRequired.
  ///
  /// In zh, this message translates to:
  /// **'Access Token 不能为空'**
  String get accessTokenRequired;

  /// No description provided for @bangumiTokenEmpty.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi Token 为空，请检查'**
  String get bangumiTokenEmpty;

  /// No description provided for @testingBangumiToken.
  ///
  /// In zh, this message translates to:
  /// **'正在测试 Bangumi Token…'**
  String get testingBangumiToken;

  /// No description provided for @validationFailed.
  ///
  /// In zh, this message translates to:
  /// **'验证失败：{error}'**
  String validationFailed(String error);

  /// No description provided for @bangumiTestSucceeded.
  ///
  /// In zh, this message translates to:
  /// **'测试成功，用户名：{username}'**
  String bangumiTestSucceeded(String username);

  /// No description provided for @preparingBangumiStatusSync.
  ///
  /// In zh, this message translates to:
  /// **'准备同步 Bangumi 状态…'**
  String get preparingBangumiStatusSync;

  /// No description provided for @exitKazumi.
  ///
  /// In zh, this message translates to:
  /// **'退出 Kazumi'**
  String get exitKazumi;

  /// No description provided for @askEveryTime.
  ///
  /// In zh, this message translates to:
  /// **'每次都询问'**
  String get askEveryTime;

  /// No description provided for @cacheManagement.
  ///
  /// In zh, this message translates to:
  /// **'缓存管理'**
  String get cacheManagement;

  /// No description provided for @clearCoverCacheConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'缓存为番剧封面，清除后加载时需要重新下载，确认要清除缓存吗？'**
  String get clearCoverCacheConfirmation;

  /// No description provided for @openSource.
  ///
  /// In zh, this message translates to:
  /// **'开源'**
  String get openSource;

  /// No description provided for @openSourceLicenses.
  ///
  /// In zh, this message translates to:
  /// **'开源许可证'**
  String get openSourceLicenses;

  /// No description provided for @viewOpenSourceLicenses.
  ///
  /// In zh, this message translates to:
  /// **'查看所有开源许可证'**
  String get viewOpenSourceLicenses;

  /// No description provided for @externalLinks.
  ///
  /// In zh, this message translates to:
  /// **'外部链接'**
  String get externalLinks;

  /// No description provided for @projectHomepage.
  ///
  /// In zh, this message translates to:
  /// **'项目主页'**
  String get projectHomepage;

  /// No description provided for @sourceRepository.
  ///
  /// In zh, this message translates to:
  /// **'代码仓库'**
  String get sourceRepository;

  /// No description provided for @iconDesign.
  ///
  /// In zh, this message translates to:
  /// **'图标创作'**
  String get iconDesign;

  /// No description provided for @animeIndex.
  ///
  /// In zh, this message translates to:
  /// **'番剧索引'**
  String get animeIndex;

  /// No description provided for @danDanPlayOpenPlatform.
  ///
  /// In zh, this message translates to:
  /// **'弹弹play开放平台'**
  String get danDanPlayOpenPlatform;

  /// No description provided for @community.
  ///
  /// In zh, this message translates to:
  /// **'社区'**
  String get community;

  /// No description provided for @tapToJoin.
  ///
  /// In zh, this message translates to:
  /// **'点击加入'**
  String get tapToJoin;

  /// No description provided for @whenClosing.
  ///
  /// In zh, this message translates to:
  /// **'关闭时'**
  String get whenClosing;

  /// No description provided for @storageAndLogs.
  ///
  /// In zh, this message translates to:
  /// **'存储与日志'**
  String get storageAndLogs;

  /// No description provided for @errorLogs.
  ///
  /// In zh, this message translates to:
  /// **'错误日志'**
  String get errorLogs;

  /// No description provided for @clearCache.
  ///
  /// In zh, this message translates to:
  /// **'清除缓存'**
  String get clearCache;

  /// No description provided for @calculating.
  ///
  /// In zh, this message translates to:
  /// **'统计中…'**
  String get calculating;

  /// No description provided for @appUpdates.
  ///
  /// In zh, this message translates to:
  /// **'应用更新'**
  String get appUpdates;

  /// No description provided for @checkAppUpdatesOnStartup.
  ///
  /// In zh, this message translates to:
  /// **'启动时检查应用更新'**
  String get checkAppUpdatesOnStartup;

  /// No description provided for @checkAppUpdates.
  ///
  /// In zh, this message translates to:
  /// **'检查应用更新'**
  String get checkAppUpdates;

  /// No description provided for @currentVersion.
  ///
  /// In zh, this message translates to:
  /// **'当前版本 {version}'**
  String currentVersion(String version);

  /// No description provided for @ruleUpdates.
  ///
  /// In zh, this message translates to:
  /// **'规则更新'**
  String get ruleUpdates;

  /// No description provided for @checkRuleUpdatesOnStartup.
  ///
  /// In zh, this message translates to:
  /// **'启动时检查规则更新'**
  String get checkRuleUpdatesOnStartup;

  /// No description provided for @notCollected.
  ///
  /// In zh, this message translates to:
  /// **'未收藏'**
  String get notCollected;

  /// No description provided for @watching.
  ///
  /// In zh, this message translates to:
  /// **'在看'**
  String get watching;

  /// No description provided for @planToWatch.
  ///
  /// In zh, this message translates to:
  /// **'想看'**
  String get planToWatch;

  /// No description provided for @onHold.
  ///
  /// In zh, this message translates to:
  /// **'搁置'**
  String get onHold;

  /// No description provided for @watched.
  ///
  /// In zh, this message translates to:
  /// **'看过'**
  String get watched;

  /// No description provided for @abandoned.
  ///
  /// In zh, this message translates to:
  /// **'抛弃'**
  String get abandoned;

  /// No description provided for @notFollowing.
  ///
  /// In zh, this message translates to:
  /// **'未追'**
  String get notFollowing;

  /// No description provided for @localFirst.
  ///
  /// In zh, this message translates to:
  /// **'本地优先'**
  String get localFirst;

  /// No description provided for @bangumiFirst.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi 优先'**
  String get bangumiFirst;

  /// No description provided for @invalidPlaybackParameters.
  ///
  /// In zh, this message translates to:
  /// **'播放参数无效，请返回后重试。'**
  String get invalidPlaybackParameters;

  /// No description provided for @danmakuSendingUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'当前剧集不支持弹幕发送的说'**
  String get danmakuSendingUnsupported;

  /// No description provided for @danmakuEmpty.
  ///
  /// In zh, this message translates to:
  /// **'弹幕内容为空'**
  String get danmakuEmpty;

  /// No description provided for @danmakuTooLong.
  ///
  /// In zh, this message translates to:
  /// **'弹幕内容过长'**
  String get danmakuTooLong;

  /// No description provided for @joinWatchTogetherBeforeChatDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'你还没有加入一起看，无法发送聊天室弹幕'**
  String get joinWatchTogetherBeforeChatDanmaku;

  /// No description provided for @me.
  ///
  /// In zh, this message translates to:
  /// **'我'**
  String get me;

  /// No description provided for @sendDanmakuTo.
  ///
  /// In zh, this message translates to:
  /// **'发送弹幕至'**
  String get sendDanmakuTo;

  /// No description provided for @chooseDanmakuDestination.
  ///
  /// In zh, this message translates to:
  /// **'选择这条弹幕的发送位置'**
  String get chooseDanmakuDestination;

  /// No description provided for @sendDestination.
  ///
  /// In zh, this message translates to:
  /// **'发送位置'**
  String get sendDestination;

  /// No description provided for @sendToChatRoom.
  ///
  /// In zh, this message translates to:
  /// **'发送到聊天室'**
  String get sendToChatRoom;

  /// No description provided for @visibleToWatchTogetherMembers.
  ///
  /// In zh, this message translates to:
  /// **'同步观看成员均可看到'**
  String get visibleToWatchTogetherMembers;

  /// No description provided for @sendToRemoteDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'发送到远程弹幕库'**
  String get sendToRemoteDanmaku;

  /// No description provided for @sendAsVideoDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'作为视频弹幕发送'**
  String get sendAsVideoDanmaku;

  /// No description provided for @parsingVideoResource.
  ///
  /// In zh, this message translates to:
  /// **'视频资源解析中'**
  String get parsingVideoResource;

  /// No description provided for @videoResourceParsedLoadingPlayer.
  ///
  /// In zh, this message translates to:
  /// **'视频资源解析成功，播放器加载中'**
  String get videoResourceParsedLoadingPlayer;

  /// No description provided for @anthology.
  ///
  /// In zh, this message translates to:
  /// **'合集'**
  String get anthology;

  /// No description provided for @playbackRoadNumber.
  ///
  /// In zh, this message translates to:
  /// **'播放线路{number}'**
  String playbackRoadNumber(int number);

  /// No description provided for @episodes.
  ///
  /// In zh, this message translates to:
  /// **'选集'**
  String get episodes;

  /// No description provided for @comments.
  ///
  /// In zh, this message translates to:
  /// **'评论'**
  String get comments;

  /// No description provided for @waitForVideoToLoad.
  ///
  /// In zh, this message translates to:
  /// **'请等待视频加载完成'**
  String get waitForVideoToLoad;

  /// No description provided for @openDanmakuFirst.
  ///
  /// In zh, this message translates to:
  /// **'请先打开弹幕'**
  String get openDanmakuFirst;

  /// No description provided for @tapToSendDanmaku.
  ///
  /// In zh, this message translates to:
  /// **'点我发弹幕'**
  String get tapToSendDanmaku;

  /// No description provided for @verificationSucceeded.
  ///
  /// In zh, this message translates to:
  /// **'验证成功'**
  String get verificationSucceeded;

  /// No description provided for @searchWillRestart.
  ///
  /// In zh, this message translates to:
  /// **'即将重新检索'**
  String get searchWillRestart;

  /// No description provided for @noAliasesTryManualSearch.
  ///
  /// In zh, this message translates to:
  /// **'无可用别名，试试手动检索'**
  String get noAliasesTryManualSearch;

  /// No description provided for @resultCount.
  ///
  /// In zh, this message translates to:
  /// **'{count} 条'**
  String resultCount(int count);

  /// No description provided for @searchFailed.
  ///
  /// In zh, this message translates to:
  /// **'检索失败'**
  String get searchFailed;

  /// No description provided for @verificationRequired.
  ///
  /// In zh, this message translates to:
  /// **'需要验证'**
  String get verificationRequired;

  /// No description provided for @noResults.
  ///
  /// In zh, this message translates to:
  /// **'无结果'**
  String get noResults;

  /// No description provided for @moreActionsFor.
  ///
  /// In zh, this message translates to:
  /// **'{name} 的更多操作'**
  String moreActionsFor(String name);

  /// No description provided for @aliasSearch.
  ///
  /// In zh, this message translates to:
  /// **'别名检索'**
  String get aliasSearch;

  /// No description provided for @manualSearch.
  ///
  /// In zh, this message translates to:
  /// **'手动检索'**
  String get manualSearch;

  /// No description provided for @openInBrowser.
  ///
  /// In zh, this message translates to:
  /// **'在浏览器中打开'**
  String get openInBrowser;

  /// No description provided for @sourceRequiresVerification.
  ///
  /// In zh, this message translates to:
  /// **'这个源要求先完成验证'**
  String get sourceRequiresVerification;

  /// No description provided for @verify.
  ///
  /// In zh, this message translates to:
  /// **'进行验证'**
  String get verify;

  /// No description provided for @sourceReturnedNoResults.
  ///
  /// In zh, this message translates to:
  /// **'这个源没能返回结果'**
  String get sourceReturnedNoResults;

  /// No description provided for @tryAnotherKeyword.
  ///
  /// In zh, this message translates to:
  /// **'换个关键词再试试'**
  String get tryAnotherKeyword;

  /// No description provided for @searchingKeywordProgress.
  ///
  /// In zh, this message translates to:
  /// **'「{keyword}」· 检索中 {done}/{total}'**
  String searchingKeywordProgress(String keyword, int done, int total);

  /// No description provided for @keywordResultCount.
  ///
  /// In zh, this message translates to:
  /// **'「{keyword}」· {count} 条结果'**
  String keywordResultCount(String keyword, int count);

  /// No description provided for @selectPlaybackSource.
  ///
  /// In zh, this message translates to:
  /// **'选择播放源'**
  String get selectPlaybackSource;

  /// No description provided for @enterAlias.
  ///
  /// In zh, this message translates to:
  /// **'输入别名'**
  String get enterAlias;

  /// No description provided for @deleteConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'删除确认'**
  String get deleteConfirmation;

  /// No description provided for @deleteAliasConfirmation.
  ///
  /// In zh, this message translates to:
  /// **'删除后无法恢复，确认要永久删除这个别名吗？'**
  String get deleteAliasConfirmation;

  /// No description provided for @executingVerificationScript.
  ///
  /// In zh, this message translates to:
  /// **'{name} 正在执行验证脚本，请稍候'**
  String executingVerificationScript(String name);

  /// No description provided for @verificationScriptRunningDescription.
  ///
  /// In zh, this message translates to:
  /// **'已加载验证页面并执行自定义脚本，等待验证通过…'**
  String get verificationScriptRunningDescription;

  /// No description provided for @automaticVerificationInProgress.
  ///
  /// In zh, this message translates to:
  /// **'{name} 正在自动完成验证，请稍候'**
  String automaticVerificationInProgress(String name);

  /// No description provided for @automaticVerificationDescription.
  ///
  /// In zh, this message translates to:
  /// **'已检测到验证按钮并模拟点击，等待验证通过…'**
  String get automaticVerificationDescription;

  /// No description provided for @enterCaptcha.
  ///
  /// In zh, this message translates to:
  /// **'请输入验证码'**
  String get enterCaptcha;

  /// No description provided for @captchaVerification.
  ///
  /// In zh, this message translates to:
  /// **'验证码验证'**
  String get captchaVerification;

  /// No description provided for @pluginRequiresCaptcha.
  ///
  /// In zh, this message translates to:
  /// **'{name} 需要验证码验证'**
  String pluginRequiresCaptcha(String name);

  /// No description provided for @loadingCaptchaImage.
  ///
  /// In zh, this message translates to:
  /// **'正在加载验证码图片…'**
  String get loadingCaptchaImage;

  /// No description provided for @imageDecodeFailed.
  ///
  /// In zh, this message translates to:
  /// **'图片解码失败'**
  String get imageDecodeFailed;

  /// No description provided for @automaticVerification.
  ///
  /// In zh, this message translates to:
  /// **'自动验证中'**
  String get automaticVerification;

  /// No description provided for @invalidAnimeDetailsParameters.
  ///
  /// In zh, this message translates to:
  /// **'番组详情参数无效，请返回后重新打开。'**
  String get invalidAnimeDetailsParameters;

  /// No description provided for @overview.
  ///
  /// In zh, this message translates to:
  /// **'概览'**
  String get overview;

  /// No description provided for @characters.
  ///
  /// In zh, this message translates to:
  /// **'角色'**
  String get characters;

  /// No description provided for @related.
  ///
  /// In zh, this message translates to:
  /// **'关联'**
  String get related;

  /// No description provided for @staff.
  ///
  /// In zh, this message translates to:
  /// **'制作人员'**
  String get staff;

  /// No description provided for @bindBangumiBeforeCommenting.
  ///
  /// In zh, this message translates to:
  /// **'请先在同步设置中绑定你的 Bangumi 配置以发表吐槽'**
  String get bindBangumiBeforeCommenting;

  /// No description provided for @collectBeforeReviewing.
  ///
  /// In zh, this message translates to:
  /// **'请先追番后再发表评价'**
  String get collectBeforeReviewing;

  /// No description provided for @postComment.
  ///
  /// In zh, this message translates to:
  /// **'发表吐槽'**
  String get postComment;

  /// No description provided for @startWatching.
  ///
  /// In zh, this message translates to:
  /// **'开始观看'**
  String get startWatching;

  /// No description provided for @introduction.
  ///
  /// In zh, this message translates to:
  /// **'简介'**
  String get introduction;

  /// No description provided for @showLess.
  ///
  /// In zh, this message translates to:
  /// **'加载更少'**
  String get showLess;

  /// No description provided for @showMore.
  ///
  /// In zh, this message translates to:
  /// **'加载更多'**
  String get showMore;

  /// No description provided for @morePlus.
  ///
  /// In zh, this message translates to:
  /// **'更多 +'**
  String get morePlus;

  /// No description provided for @loadRelatedItemsFailed.
  ///
  /// In zh, this message translates to:
  /// **'获取关联条目失败，请重试'**
  String get loadRelatedItemsFailed;

  /// No description provided for @noRelatedItems.
  ///
  /// In zh, this message translates to:
  /// **'暂无关联条目'**
  String get noRelatedItems;

  /// No description provided for @loadFailedRetry.
  ///
  /// In zh, this message translates to:
  /// **'获取失败，请重试'**
  String get loadFailedRetry;

  /// No description provided for @profile.
  ///
  /// In zh, this message translates to:
  /// **'资料'**
  String get profile;

  /// No description provided for @character.
  ///
  /// In zh, this message translates to:
  /// **'人物'**
  String get character;

  /// No description provided for @viewCharacterImages.
  ///
  /// In zh, this message translates to:
  /// **'查看人物图片'**
  String get viewCharacterImages;

  /// No description provided for @viewOriginalImage.
  ///
  /// In zh, this message translates to:
  /// **'查看原图'**
  String get viewOriginalImage;

  /// No description provided for @noCharacterProfile.
  ///
  /// In zh, this message translates to:
  /// **'暂无人物资料'**
  String get noCharacterProfile;

  /// No description provided for @notRated.
  ///
  /// In zh, this message translates to:
  /// **'未评分'**
  String get notRated;

  /// No description provided for @ratingAwful.
  ///
  /// In zh, this message translates to:
  /// **'不忍直视'**
  String get ratingAwful;

  /// No description provided for @ratingVeryBad.
  ///
  /// In zh, this message translates to:
  /// **'很差'**
  String get ratingVeryBad;

  /// No description provided for @ratingBad.
  ///
  /// In zh, this message translates to:
  /// **'差'**
  String get ratingBad;

  /// No description provided for @ratingPoor.
  ///
  /// In zh, this message translates to:
  /// **'较差'**
  String get ratingPoor;

  /// No description provided for @ratingAverage.
  ///
  /// In zh, this message translates to:
  /// **'不过不失'**
  String get ratingAverage;

  /// No description provided for @ratingOkay.
  ///
  /// In zh, this message translates to:
  /// **'还行'**
  String get ratingOkay;

  /// No description provided for @ratingRecommended.
  ///
  /// In zh, this message translates to:
  /// **'推荐'**
  String get ratingRecommended;

  /// No description provided for @ratingHighlyRecommended.
  ///
  /// In zh, this message translates to:
  /// **'力荐'**
  String get ratingHighlyRecommended;

  /// No description provided for @ratingMasterpiece.
  ///
  /// In zh, this message translates to:
  /// **'神作'**
  String get ratingMasterpiece;

  /// No description provided for @ratingLegendary.
  ///
  /// In zh, this message translates to:
  /// **'超神作'**
  String get ratingLegendary;

  /// No description provided for @maxTags.
  ///
  /// In zh, this message translates to:
  /// **'最多选择 {count} 个标签'**
  String maxTags(int count);

  /// No description provided for @enterTag.
  ///
  /// In zh, this message translates to:
  /// **'请输入标签内容'**
  String get enterTag;

  /// No description provided for @tagTooLong.
  ///
  /// In zh, this message translates to:
  /// **'单个标签不能超过 {count} 个字'**
  String tagTooLong(int count);

  /// No description provided for @tagAlreadyAdded.
  ///
  /// In zh, this message translates to:
  /// **'这个标签已经添加过了'**
  String get tagAlreadyAdded;

  /// No description provided for @reviewHint.
  ///
  /// In zh, this message translates to:
  /// **'写下你对这部番剧的看法'**
  String get reviewHint;

  /// No description provided for @myRating.
  ///
  /// In zh, this message translates to:
  /// **'我的评分'**
  String get myRating;

  /// No description provided for @noTagsAdded.
  ///
  /// In zh, this message translates to:
  /// **'还没有添加标签'**
  String get noTagsAdded;

  /// No description provided for @editTags.
  ///
  /// In zh, this message translates to:
  /// **'编辑标签'**
  String get editTags;

  /// No description provided for @customTagExample.
  ///
  /// In zh, this message translates to:
  /// **'例如：治愈'**
  String get customTagExample;

  /// No description provided for @selectedTags.
  ///
  /// In zh, this message translates to:
  /// **'已选标签'**
  String get selectedTags;

  /// No description provided for @popularTags.
  ///
  /// In zh, this message translates to:
  /// **'热门标签'**
  String get popularTags;

  /// No description provided for @none.
  ///
  /// In zh, this message translates to:
  /// **'无'**
  String get none;

  /// No description provided for @text.
  ///
  /// In zh, this message translates to:
  /// **'文本'**
  String get text;

  /// No description provided for @advancedOptions.
  ///
  /// In zh, this message translates to:
  /// **'高级选项'**
  String get advancedOptions;

  /// No description provided for @ruleEditorPageTitle.
  ///
  /// In zh, this message translates to:
  /// **'规则编辑器'**
  String get ruleEditorPageTitle;

  /// No description provided for @ruleEditorTestRule.
  ///
  /// In zh, this message translates to:
  /// **'测试规则'**
  String get ruleEditorTestRule;

  /// No description provided for @ruleEditorForm.
  ///
  /// In zh, this message translates to:
  /// **'表单'**
  String get ruleEditorForm;

  /// No description provided for @ruleEditorNestedJson.
  ///
  /// In zh, this message translates to:
  /// **'嵌套 JSON'**
  String get ruleEditorNestedJson;

  /// No description provided for @ruleEditorDelimitedString.
  ///
  /// In zh, this message translates to:
  /// **'分隔字符串'**
  String get ruleEditorDelimitedString;

  /// No description provided for @ruleEditorLegacyParser.
  ///
  /// In zh, this message translates to:
  /// **'简易解析'**
  String get ruleEditorLegacyParser;

  /// No description provided for @ruleEditorLegacyParserDesc.
  ///
  /// In zh, this message translates to:
  /// **'使用简易解析器而不是现代解析器'**
  String get ruleEditorLegacyParserDesc;

  /// No description provided for @ruleEditorAdBlocker.
  ///
  /// In zh, this message translates to:
  /// **'广告过滤'**
  String get ruleEditorAdBlocker;

  /// No description provided for @ruleEditorAdBlockerDesc.
  ///
  /// In zh, this message translates to:
  /// **'启用 HLS 广告过滤'**
  String get ruleEditorAdBlockerDesc;

  /// No description provided for @ruleEditorAntiCrawlerEnable.
  ///
  /// In zh, this message translates to:
  /// **'启用反反爬虫'**
  String get ruleEditorAntiCrawlerEnable;

  /// No description provided for @ruleEditorAntiCrawlerEnableDesc.
  ///
  /// In zh, this message translates to:
  /// **'检索失败时显示验证码验证按钮而非重试'**
  String get ruleEditorAntiCrawlerEnableDesc;

  /// No description provided for @ruleEditorCaptchaType.
  ///
  /// In zh, this message translates to:
  /// **'验证类型'**
  String get ruleEditorCaptchaType;

  /// No description provided for @ruleEditorImageCaptcha.
  ///
  /// In zh, this message translates to:
  /// **'图片验证码'**
  String get ruleEditorImageCaptcha;

  /// No description provided for @ruleEditorAutoClick.
  ///
  /// In zh, this message translates to:
  /// **'自动点击'**
  String get ruleEditorAutoClick;

  /// No description provided for @ruleEditorCustomScript.
  ///
  /// In zh, this message translates to:
  /// **'自定义脚本'**
  String get ruleEditorCustomScript;

  /// No description provided for @ruleEditorImageCaptchaDesc.
  ///
  /// In zh, this message translates to:
  /// **'展示验证码图片，由用户手动输入'**
  String get ruleEditorImageCaptchaDesc;

  /// No description provided for @ruleEditorAutoClickDesc.
  ///
  /// In zh, this message translates to:
  /// **'检测到验证按钮后自动模拟点击'**
  String get ruleEditorAutoClickDesc;

  /// No description provided for @ruleEditorCustomScriptDesc.
  ///
  /// In zh, this message translates to:
  /// **'加载页面后执行规则内的验证脚本'**
  String get ruleEditorCustomScriptDesc;

  /// No description provided for @ruleEditorUnknownCaptchaType.
  ///
  /// In zh, this message translates to:
  /// **'未知验证类型'**
  String get ruleEditorUnknownCaptchaType;

  /// No description provided for @ruleEditorCaptchaDetectionMethod.
  ///
  /// In zh, this message translates to:
  /// **'验证页检测方式'**
  String get ruleEditorCaptchaDetectionMethod;

  /// No description provided for @ruleEditorCaptchaDetectionMethodDesc.
  ///
  /// In zh, this message translates to:
  /// **'优先使用该标记判断搜索响应是否为验证页'**
  String get ruleEditorCaptchaDetectionMethodDesc;

  /// No description provided for @ruleEditorRegex.
  ///
  /// In zh, this message translates to:
  /// **'正则'**
  String get ruleEditorRegex;

  /// No description provided for @ruleEditorBasicInfo.
  ///
  /// In zh, this message translates to:
  /// **'基本信息'**
  String get ruleEditorBasicInfo;

  /// No description provided for @ruleEditorBasicInfoDesc.
  ///
  /// In zh, this message translates to:
  /// **'规则的名称、版本与站点地址'**
  String get ruleEditorBasicInfoDesc;

  /// No description provided for @ruleEditorSearchRules.
  ///
  /// In zh, this message translates to:
  /// **'搜索规则'**
  String get ruleEditorSearchRules;

  /// No description provided for @ruleEditorSearchRulesDesc.
  ///
  /// In zh, this message translates to:
  /// **'定义如何在站点内检索条目'**
  String get ruleEditorSearchRulesDesc;

  /// No description provided for @ruleEditorEpisodeRules.
  ///
  /// In zh, this message translates to:
  /// **'选集规则'**
  String get ruleEditorEpisodeRules;

  /// No description provided for @ruleEditorEpisodeRulesDesc.
  ///
  /// In zh, this message translates to:
  /// **'定义如何获取播放线路与剧集列表'**
  String get ruleEditorEpisodeRulesDesc;

  /// No description provided for @ruleEditorAdvancedOptionsDesc.
  ///
  /// In zh, this message translates to:
  /// **'行为、网络与反反爬虫配置'**
  String get ruleEditorAdvancedOptionsDesc;

  /// No description provided for @ruleEditorBehaviorSettings.
  ///
  /// In zh, this message translates to:
  /// **'行为设置'**
  String get ruleEditorBehaviorSettings;

  /// No description provided for @ruleEditorNetworkSettings.
  ///
  /// In zh, this message translates to:
  /// **'网络设置'**
  String get ruleEditorNetworkSettings;

  /// No description provided for @ruleEditorAntiCrawler.
  ///
  /// In zh, this message translates to:
  /// **'反反爬虫'**
  String get ruleEditorAntiCrawler;

  /// No description provided for @ruleEditorRuleName.
  ///
  /// In zh, this message translates to:
  /// **'规则名称'**
  String get ruleEditorRuleName;

  /// No description provided for @ruleEditorRuleVersion.
  ///
  /// In zh, this message translates to:
  /// **'规则版本'**
  String get ruleEditorRuleVersion;

  /// No description provided for @ruleEditorBaseUrl.
  ///
  /// In zh, this message translates to:
  /// **'基础地址（URL）'**
  String get ruleEditorBaseUrl;

  /// No description provided for @ruleEditorSearchRuleType.
  ///
  /// In zh, this message translates to:
  /// **'搜索规则类型'**
  String get ruleEditorSearchRuleType;

  /// No description provided for @ruleEditorEpisodeRuleType.
  ///
  /// In zh, this message translates to:
  /// **'选集规则类型'**
  String get ruleEditorEpisodeRuleType;

  /// No description provided for @ruleEditorSearchUrl.
  ///
  /// In zh, this message translates to:
  /// **'搜索地址（URL）'**
  String get ruleEditorSearchUrl;

  /// No description provided for @ruleEditorSearchListXPath.
  ///
  /// In zh, this message translates to:
  /// **'搜索结果列表（XPath）'**
  String get ruleEditorSearchListXPath;

  /// No description provided for @ruleEditorItemNameXPath.
  ///
  /// In zh, this message translates to:
  /// **'条目名称（XPath）'**
  String get ruleEditorItemNameXPath;

  /// No description provided for @ruleEditorItemLinkXPath.
  ///
  /// In zh, this message translates to:
  /// **'条目链接（XPath）'**
  String get ruleEditorItemLinkXPath;

  /// No description provided for @ruleEditorRoadListXPath.
  ///
  /// In zh, this message translates to:
  /// **'播放线路列表（XPath）'**
  String get ruleEditorRoadListXPath;

  /// No description provided for @ruleEditorEpisodeListXPath.
  ///
  /// In zh, this message translates to:
  /// **'剧集列表（XPath）'**
  String get ruleEditorEpisodeListXPath;

  /// No description provided for @ruleEditorSearchMethod.
  ///
  /// In zh, this message translates to:
  /// **'搜索请求方法'**
  String get ruleEditorSearchMethod;

  /// No description provided for @ruleEditorSearchRequestUrl.
  ///
  /// In zh, this message translates to:
  /// **'搜索请求地址（URL）'**
  String get ruleEditorSearchRequestUrl;

  /// No description provided for @ruleEditorSearchHeaders.
  ///
  /// In zh, this message translates to:
  /// **'搜索请求头（JSON）'**
  String get ruleEditorSearchHeaders;

  /// No description provided for @ruleEditorSearchQuery.
  ///
  /// In zh, this message translates to:
  /// **'搜索查询参数（JSON）'**
  String get ruleEditorSearchQuery;

  /// No description provided for @ruleEditorSearchBodyType.
  ///
  /// In zh, this message translates to:
  /// **'搜索请求体类型'**
  String get ruleEditorSearchBodyType;

  /// No description provided for @ruleEditorSearchBody.
  ///
  /// In zh, this message translates to:
  /// **'搜索请求体（JSON）'**
  String get ruleEditorSearchBody;

  /// No description provided for @ruleEditorSearchListPath.
  ///
  /// In zh, this message translates to:
  /// **'搜索结果列表路径（JSONPath）'**
  String get ruleEditorSearchListPath;

  /// No description provided for @ruleEditorItemNamePath.
  ///
  /// In zh, this message translates to:
  /// **'条目名称路径（JSONPath，相对条目）'**
  String get ruleEditorItemNamePath;

  /// No description provided for @ruleEditorItemSourcePath.
  ///
  /// In zh, this message translates to:
  /// **'条目来源路径（JSONPath，相对条目）'**
  String get ruleEditorItemSourcePath;

  /// No description provided for @ruleEditorEpisodeMethod.
  ///
  /// In zh, this message translates to:
  /// **'选集请求方法'**
  String get ruleEditorEpisodeMethod;

  /// No description provided for @ruleEditorEpisodeRequestUrl.
  ///
  /// In zh, this message translates to:
  /// **'选集请求地址（URL）'**
  String get ruleEditorEpisodeRequestUrl;

  /// No description provided for @ruleEditorEpisodeHeaders.
  ///
  /// In zh, this message translates to:
  /// **'选集请求头（JSON）'**
  String get ruleEditorEpisodeHeaders;

  /// No description provided for @ruleEditorEpisodeQuery.
  ///
  /// In zh, this message translates to:
  /// **'选集查询参数（JSON）'**
  String get ruleEditorEpisodeQuery;

  /// No description provided for @ruleEditorEpisodeBodyType.
  ///
  /// In zh, this message translates to:
  /// **'选集请求体类型'**
  String get ruleEditorEpisodeBodyType;

  /// No description provided for @ruleEditorEpisodeBody.
  ///
  /// In zh, this message translates to:
  /// **'选集请求体（JSON）'**
  String get ruleEditorEpisodeBody;

  /// No description provided for @ruleEditorEpisodeResponseFormat.
  ///
  /// In zh, this message translates to:
  /// **'选集响应格式'**
  String get ruleEditorEpisodeResponseFormat;

  /// No description provided for @ruleEditorRoadListPath.
  ///
  /// In zh, this message translates to:
  /// **'播放线路列表路径（JSONPath，留空表示单线路）'**
  String get ruleEditorRoadListPath;

  /// No description provided for @ruleEditorRoadNamePath.
  ///
  /// In zh, this message translates to:
  /// **'线路名称路径（JSONPath，相对线路）'**
  String get ruleEditorRoadNamePath;

  /// No description provided for @ruleEditorEpisodeListPath.
  ///
  /// In zh, this message translates to:
  /// **'剧集列表路径（JSONPath，相对线路）'**
  String get ruleEditorEpisodeListPath;

  /// No description provided for @ruleEditorEpisodeNamePath.
  ///
  /// In zh, this message translates to:
  /// **'剧集名称路径（JSONPath，相对剧集）'**
  String get ruleEditorEpisodeNamePath;

  /// No description provided for @ruleEditorPlaybackEntryPath.
  ///
  /// In zh, this message translates to:
  /// **'播放入口地址路径（JSONPath，使用播放页地址模板时可留空）'**
  String get ruleEditorPlaybackEntryPath;

  /// No description provided for @ruleEditorPlaybackEntryPathHelper.
  ///
  /// In zh, this message translates to:
  /// **'从剧集对象读取交给 WebView 的地址，可以是播放页面或媒体直链。'**
  String get ruleEditorPlaybackEntryPathHelper;

  /// No description provided for @ruleEditorRoadNamesPath.
  ///
  /// In zh, this message translates to:
  /// **'线路名称串路径（JSONPath）'**
  String get ruleEditorRoadNamesPath;

  /// No description provided for @ruleEditorRoadEpisodesPath.
  ///
  /// In zh, this message translates to:
  /// **'线路剧集串路径（JSONPath）'**
  String get ruleEditorRoadEpisodesPath;

  /// No description provided for @ruleEditorRoadSeparator.
  ///
  /// In zh, this message translates to:
  /// **'线路分隔符'**
  String get ruleEditorRoadSeparator;

  /// No description provided for @ruleEditorEpisodeSeparator.
  ///
  /// In zh, this message translates to:
  /// **'剧集分隔符'**
  String get ruleEditorEpisodeSeparator;

  /// No description provided for @ruleEditorFieldSeparator.
  ///
  /// In zh, this message translates to:
  /// **'名称与地址分隔符'**
  String get ruleEditorFieldSeparator;

  /// No description provided for @ruleEditorResponseVariables.
  ///
  /// In zh, this message translates to:
  /// **'响应变量（JSON：变量名 → JSONPath）'**
  String get ruleEditorResponseVariables;

  /// No description provided for @ruleEditorPlayPageUrl.
  ///
  /// In zh, this message translates to:
  /// **'播放页地址模板（URL，可选）'**
  String get ruleEditorPlayPageUrl;

  /// No description provided for @ruleEditorPlayPageUrlHelper.
  ///
  /// In zh, this message translates to:
  /// **'可用变量：@source、@episodeUrl、@roadIndex/@episodeIndex（从 0 起）、@roadNumber/@episodeNumber（从 1 起）及响应变量。'**
  String get ruleEditorPlayPageUrlHelper;

  /// No description provided for @ruleEditorPlayPageQuery.
  ///
  /// In zh, this message translates to:
  /// **'播放页查询参数（JSON）'**
  String get ruleEditorPlayPageQuery;

  /// No description provided for @ruleEditorPlayPageQueryHelper.
  ///
  /// In zh, this message translates to:
  /// **'与地址模板可用变量相同，合并进最终 URL 的查询参数。'**
  String get ruleEditorPlayPageQueryHelper;

  /// No description provided for @ruleEditorUserAgent.
  ///
  /// In zh, this message translates to:
  /// **'用户代理（User-Agent）'**
  String get ruleEditorUserAgent;

  /// No description provided for @ruleEditorPlayerDownloaderOnly.
  ///
  /// In zh, this message translates to:
  /// **'仅用于播放器和下载器。'**
  String get ruleEditorPlayerDownloaderOnly;

  /// No description provided for @ruleEditorReferer.
  ///
  /// In zh, this message translates to:
  /// **'播放请求来源（Referer）'**
  String get ruleEditorReferer;

  /// No description provided for @ruleEditorCaptchaDetectionValue.
  ///
  /// In zh, this message translates to:
  /// **'验证页检测值'**
  String get ruleEditorCaptchaDetectionValue;

  /// No description provided for @ruleEditorCaptchaDetectionValueHelper.
  ///
  /// In zh, this message translates to:
  /// **'留空时使用验证码图片或验证按钮的 XPath 进行检测。'**
  String get ruleEditorCaptchaDetectionValueHelper;

  /// No description provided for @ruleEditorCaptchaImageXPath.
  ///
  /// In zh, this message translates to:
  /// **'验证码图片（XPath）'**
  String get ruleEditorCaptchaImageXPath;

  /// No description provided for @ruleEditorCaptchaImageXPathHelper.
  ///
  /// In zh, this message translates to:
  /// **'填写验证码图片元素的 XPath。'**
  String get ruleEditorCaptchaImageXPathHelper;

  /// No description provided for @ruleEditorCaptchaInputXPath.
  ///
  /// In zh, this message translates to:
  /// **'验证码输入框（XPath）'**
  String get ruleEditorCaptchaInputXPath;

  /// No description provided for @ruleEditorCaptchaInputXPathHelper.
  ///
  /// In zh, this message translates to:
  /// **'填写验证码输入框元素的 XPath。'**
  String get ruleEditorCaptchaInputXPathHelper;

  /// No description provided for @ruleEditorCaptchaSubmitXPath.
  ///
  /// In zh, this message translates to:
  /// **'验证提交按钮（XPath）'**
  String get ruleEditorCaptchaSubmitXPath;

  /// No description provided for @ruleEditorCaptchaSubmitXPathHelper.
  ///
  /// In zh, this message translates to:
  /// **'填写提交验证码按钮元素的 XPath。'**
  String get ruleEditorCaptchaSubmitXPathHelper;

  /// No description provided for @ruleEditorVerifyButtonXPath.
  ///
  /// In zh, this message translates to:
  /// **'验证按钮（XPath）'**
  String get ruleEditorVerifyButtonXPath;

  /// No description provided for @ruleEditorVerifyButtonXPathHelper.
  ///
  /// In zh, this message translates to:
  /// **'填写验证按钮元素的 XPath，检测到后将自动点击。'**
  String get ruleEditorVerifyButtonXPathHelper;

  /// No description provided for @ruleEditorCaptchaScript.
  ///
  /// In zh, this message translates to:
  /// **'验证脚本（JavaScript）'**
  String get ruleEditorCaptchaScript;

  /// No description provided for @ruleEditorCaptchaScriptHelper.
  ///
  /// In zh, this message translates to:
  /// **'可调用 KazumiCaptcha.log、clicked、done 和 fail。'**
  String get ruleEditorCaptchaScriptHelper;

  /// No description provided for @install.
  ///
  /// In zh, this message translates to:
  /// **'安装'**
  String get install;

  /// No description provided for @installed.
  ///
  /// In zh, this message translates to:
  /// **'已安装'**
  String get installed;

  /// No description provided for @refresh.
  ///
  /// In zh, this message translates to:
  /// **'刷新'**
  String get refresh;

  /// No description provided for @refreshRuleList.
  ///
  /// In zh, this message translates to:
  /// **'刷新规则列表'**
  String get refreshRuleList;

  /// No description provided for @sortByName.
  ///
  /// In zh, this message translates to:
  /// **'按名称排序'**
  String get sortByName;

  /// No description provided for @sortByUpdateTime.
  ///
  /// In zh, this message translates to:
  /// **'按更新时间排序'**
  String get sortByUpdateTime;

  /// No description provided for @ruleRepositoryAccessFailed.
  ///
  /// In zh, this message translates to:
  /// **'无法访问规则仓库'**
  String get ruleRepositoryAccessFailed;

  /// No description provided for @ruleRepositoryAccessFailedPlayful.
  ///
  /// In zh, this message translates to:
  /// **'啊咧（⊙.⊙） 无法访问规则仓库'**
  String get ruleRepositoryAccessFailedPlayful;

  /// No description provided for @ruleRepositoryMirrorEnabled.
  ///
  /// In zh, this message translates to:
  /// **'规则仓库镜像已启用'**
  String get ruleRepositoryMirrorEnabled;

  /// No description provided for @ruleRepositoryMirrorDisabled.
  ///
  /// In zh, this message translates to:
  /// **'规则仓库镜像已禁用'**
  String get ruleRepositoryMirrorDisabled;

  /// No description provided for @enableRuleRepositoryMirror.
  ///
  /// In zh, this message translates to:
  /// **'启用规则镜像'**
  String get enableRuleRepositoryMirror;

  /// No description provided for @disableRuleRepositoryMirror.
  ///
  /// In zh, this message translates to:
  /// **'禁用规则镜像'**
  String get disableRuleRepositoryMirror;

  /// No description provided for @ruleRepositoryEmpty.
  ///
  /// In zh, this message translates to:
  /// **'规则仓库中暂无规则'**
  String get ruleRepositoryEmpty;

  /// No description provided for @lastUpdated.
  ///
  /// In zh, this message translates to:
  /// **'更新时间：{time}'**
  String lastUpdated(String time);

  /// No description provided for @invalidRuleTestParameters.
  ///
  /// In zh, this message translates to:
  /// **'规则测试参数无效，请返回后重试。'**
  String get invalidRuleTestParameters;

  /// No description provided for @invalidRuleEditorParameters.
  ///
  /// In zh, this message translates to:
  /// **'规则编辑参数无效，请返回后重试。'**
  String get invalidRuleEditorParameters;

  /// No description provided for @newVersionAvailable.
  ///
  /// In zh, this message translates to:
  /// **'发现新版本'**
  String get newVersionAvailable;

  /// No description provided for @alreadyLatestVersion.
  ///
  /// In zh, this message translates to:
  /// **'当前已经是最新版本！'**
  String get alreadyLatestVersion;

  /// No description provided for @checkUpdatesFailed.
  ///
  /// In zh, this message translates to:
  /// **'检查更新失败'**
  String get checkUpdatesFailed;

  /// No description provided for @newVersion.
  ///
  /// In zh, this message translates to:
  /// **'发现新版本 {version}'**
  String newVersion(String version);

  /// No description provided for @releaseDate.
  ///
  /// In zh, this message translates to:
  /// **'发布时间：{date}'**
  String releaseDate(String date);

  /// No description provided for @selectInstallationType.
  ///
  /// In zh, this message translates to:
  /// **'选择安装类型：'**
  String get selectInstallationType;

  /// No description provided for @autoUpdateDisabled.
  ///
  /// In zh, this message translates to:
  /// **'已关闭自动更新'**
  String get autoUpdateDisabled;

  /// No description provided for @disableAutoUpdate.
  ///
  /// In zh, this message translates to:
  /// **'关闭自动更新'**
  String get disableAutoUpdate;

  /// No description provided for @remindMeLater.
  ///
  /// In zh, this message translates to:
  /// **'稍后提醒'**
  String get remindMeLater;

  /// No description provided for @viewDetails.
  ///
  /// In zh, this message translates to:
  /// **'查看详情'**
  String get viewDetails;

  /// No description provided for @updateNow.
  ///
  /// In zh, this message translates to:
  /// **'立即更新'**
  String get updateNow;

  /// No description provided for @windowsMsixPackage.
  ///
  /// In zh, this message translates to:
  /// **'Windows MSIX 包'**
  String get windowsMsixPackage;

  /// No description provided for @windowsPortableZip.
  ///
  /// In zh, this message translates to:
  /// **'Windows 便携版（ZIP）'**
  String get windowsPortableZip;

  /// No description provided for @linuxDebPackage.
  ///
  /// In zh, this message translates to:
  /// **'Linux DEB 包'**
  String get linuxDebPackage;

  /// No description provided for @linuxTarPackage.
  ///
  /// In zh, this message translates to:
  /// **'Linux TAR 包'**
  String get linuxTarPackage;

  /// No description provided for @macosDmgImage.
  ///
  /// In zh, this message translates to:
  /// **'macOS DMG 镜像'**
  String get macosDmgImage;

  /// No description provided for @unknownInstallationType.
  ///
  /// In zh, this message translates to:
  /// **'未知安装类型'**
  String get unknownInstallationType;

  /// No description provided for @noDownloadLinkForType.
  ///
  /// In zh, this message translates to:
  /// **'没有找到 {type} 的下载链接'**
  String noDownloadLinkForType(String type);

  /// No description provided for @downloadFailedWithError.
  ///
  /// In zh, this message translates to:
  /// **'下载失败：{error}'**
  String downloadFailedWithError(String error);

  /// No description provided for @noSuitableDownloadLink.
  ///
  /// In zh, this message translates to:
  /// **'没有找到合适的下载链接'**
  String get noSuitableDownloadLink;

  /// No description provided for @downloadingUpdate.
  ///
  /// In zh, this message translates to:
  /// **'正在下载更新'**
  String get downloadingUpdate;

  /// No description provided for @insufficientPermissionTemporaryDirectory.
  ///
  /// In zh, this message translates to:
  /// **'权限不足，文件已保存到应用临时目录'**
  String get insufficientPermissionTemporaryDirectory;

  /// No description provided for @insufficientDiskSpace.
  ///
  /// In zh, this message translates to:
  /// **'磁盘空间不足'**
  String get insufficientDiskSpace;

  /// No description provided for @networkConnectionError.
  ///
  /// In zh, this message translates to:
  /// **'网络连接错误'**
  String get networkConnectionError;

  /// No description provided for @fileIntegrityVerificationFailed.
  ///
  /// In zh, this message translates to:
  /// **'文件完整性验证失败，可能是网络传输错误'**
  String get fileIntegrityVerificationFailed;

  /// No description provided for @errorDetails.
  ///
  /// In zh, this message translates to:
  /// **'错误详情：{error}'**
  String errorDetails(String error);

  /// No description provided for @downloadComplete.
  ///
  /// In zh, this message translates to:
  /// **'下载完成'**
  String get downloadComplete;

  /// No description provided for @newVersionDownloaded.
  ///
  /// In zh, this message translates to:
  /// **'新版本 {version} 已下载完成'**
  String newVersionDownloaded(String version);

  /// No description provided for @appWillExitDuringInstallation.
  ///
  /// In zh, this message translates to:
  /// **'安装过程中应用将会退出'**
  String get appWillExitDuringInstallation;

  /// No description provided for @fileLocation.
  ///
  /// In zh, this message translates to:
  /// **'文件位置：'**
  String get fileLocation;

  /// No description provided for @installLater.
  ///
  /// In zh, this message translates to:
  /// **'稍后安装'**
  String get installLater;

  /// No description provided for @openFolder.
  ///
  /// In zh, this message translates to:
  /// **'打开文件夹'**
  String get openFolder;

  /// No description provided for @installNow.
  ///
  /// In zh, this message translates to:
  /// **'立即安装'**
  String get installNow;

  /// No description provided for @preparingInstallAppWillExit.
  ///
  /// In zh, this message translates to:
  /// **'准备安装更新，应用即将退出…'**
  String get preparingInstallAppWillExit;

  /// No description provided for @cannotOpenInstaller.
  ///
  /// In zh, this message translates to:
  /// **'无法打开安装文件：{error}'**
  String cannotOpenInstaller(String error);

  /// No description provided for @launchInstallerFailed.
  ///
  /// In zh, this message translates to:
  /// **'启动安装程序失败：{error}'**
  String launchInstallerFailed(String error);

  /// No description provided for @fileOrDirectoryNotFound.
  ///
  /// In zh, this message translates to:
  /// **'文件或目录不存在'**
  String get fileOrDirectoryNotFound;

  /// No description provided for @fileManagerMethodUnsupported.
  ///
  /// In zh, this message translates to:
  /// **'此平台不支持通过此方法打开文件管理器'**
  String get fileManagerMethodUnsupported;

  /// No description provided for @cannotOpenFileManager.
  ///
  /// In zh, this message translates to:
  /// **'无法打开文件管理器'**
  String get cannotOpenFileManager;

  /// No description provided for @yearsAgo.
  ///
  /// In zh, this message translates to:
  /// **'{count} 年前'**
  String yearsAgo(int count);

  /// No description provided for @monthsAgo.
  ///
  /// In zh, this message translates to:
  /// **'{count} 个月前'**
  String monthsAgo(int count);

  /// No description provided for @daysAgo.
  ///
  /// In zh, this message translates to:
  /// **'{count} 天前'**
  String daysAgo(int count);

  /// No description provided for @hoursAgo.
  ///
  /// In zh, this message translates to:
  /// **'{count} 小时前'**
  String hoursAgo(int count);

  /// No description provided for @minutesAgo.
  ///
  /// In zh, this message translates to:
  /// **'{count} 分钟前'**
  String minutesAgo(int count);

  /// No description provided for @justNow.
  ///
  /// In zh, this message translates to:
  /// **'刚刚'**
  String get justNow;

  /// No description provided for @today.
  ///
  /// In zh, this message translates to:
  /// **'今天'**
  String get today;

  /// No description provided for @datePatternMonthDayTime.
  ///
  /// In zh, this message translates to:
  /// **'MM月DD日 hh:mm'**
  String get datePatternMonthDayTime;

  /// No description provided for @datePatternYearMonthDayTime.
  ///
  /// In zh, this message translates to:
  /// **'YY年MM月DD日 hh:mm'**
  String get datePatternYearMonthDayTime;

  /// No description provided for @seasonAnime.
  ///
  /// In zh, this message translates to:
  /// **'{year} 年{season}新番'**
  String seasonAnime(int year, String season);

  /// No description provided for @imageSearchFailedRetry.
  ///
  /// In zh, this message translates to:
  /// **'图片搜索失败，请稍后重试'**
  String get imageSearchFailedRetry;

  /// No description provided for @imageSearchUrlFailedRetry.
  ///
  /// In zh, this message translates to:
  /// **'图片搜索失败，请检查图片地址或稍后重试'**
  String get imageSearchUrlFailedRetry;

  /// No description provided for @loadingPlayful.
  ///
  /// In zh, this message translates to:
  /// **'加载中 ٩(◦`꒳´◦)۶'**
  String get loadingPlayful;

  /// No description provided for @animeTagDaily.
  ///
  /// In zh, this message translates to:
  /// **'日常'**
  String get animeTagDaily;

  /// No description provided for @animeTagOriginal.
  ///
  /// In zh, this message translates to:
  /// **'原创'**
  String get animeTagOriginal;

  /// No description provided for @animeTagSchool.
  ///
  /// In zh, this message translates to:
  /// **'校园'**
  String get animeTagSchool;

  /// No description provided for @animeTagComedy.
  ///
  /// In zh, this message translates to:
  /// **'搞笑'**
  String get animeTagComedy;

  /// No description provided for @animeTagFantasy.
  ///
  /// In zh, this message translates to:
  /// **'奇幻'**
  String get animeTagFantasy;

  /// No description provided for @animeTagYuri.
  ///
  /// In zh, this message translates to:
  /// **'百合'**
  String get animeTagYuri;

  /// No description provided for @animeTagRomance.
  ///
  /// In zh, this message translates to:
  /// **'恋爱'**
  String get animeTagRomance;

  /// No description provided for @animeTagMystery.
  ///
  /// In zh, this message translates to:
  /// **'悬疑'**
  String get animeTagMystery;

  /// No description provided for @animeTagHotBlooded.
  ///
  /// In zh, this message translates to:
  /// **'热血'**
  String get animeTagHotBlooded;

  /// No description provided for @animeTagHarem.
  ///
  /// In zh, this message translates to:
  /// **'后宫'**
  String get animeTagHarem;

  /// No description provided for @animeTagMecha.
  ///
  /// In zh, this message translates to:
  /// **'机战'**
  String get animeTagMecha;

  /// No description provided for @animeTagLightNovel.
  ///
  /// In zh, this message translates to:
  /// **'轻改'**
  String get animeTagLightNovel;

  /// No description provided for @animeTagIdol.
  ///
  /// In zh, this message translates to:
  /// **'偶像'**
  String get animeTagIdol;

  /// No description provided for @animeTagHealing.
  ///
  /// In zh, this message translates to:
  /// **'治愈'**
  String get animeTagHealing;

  /// No description provided for @animeTagIsekai.
  ///
  /// In zh, this message translates to:
  /// **'异世界'**
  String get animeTagIsekai;

  /// No description provided for @ruleEditorCaptchaDetectionTextHint.
  ///
  /// In zh, this message translates to:
  /// **'身份验证'**
  String get ruleEditorCaptchaDetectionTextHint;

  /// No description provided for @ruleEditorCaptchaDetectionRegexHint.
  ///
  /// In zh, this message translates to:
  /// **'身份验证|smart_verify'**
  String get ruleEditorCaptchaDetectionRegexHint;

  /// No description provided for @ruleEditorSearchUrlRequired.
  ///
  /// In zh, this message translates to:
  /// **'搜索请求地址不能为空'**
  String get ruleEditorSearchUrlRequired;

  /// No description provided for @ruleEditorEpisodeUrlRequired.
  ///
  /// In zh, this message translates to:
  /// **'选集请求地址不能为空'**
  String get ruleEditorEpisodeUrlRequired;

  /// No description provided for @mustBeJsonObject.
  ///
  /// In zh, this message translates to:
  /// **'{label} 必须是 JSON 对象'**
  String mustBeJsonObject(String label);

  /// No description provided for @invalidJsonWithError.
  ///
  /// In zh, this message translates to:
  /// **'{label} 不是有效 JSON：{error}'**
  String invalidJsonWithError(String label, String error);

  /// No description provided for @formBodyMustBeJsonObject.
  ///
  /// In zh, this message translates to:
  /// **'{label} 在表单模式下必须是 JSON 对象'**
  String formBodyMustBeJsonObject(String label);

  /// No description provided for @jsonPathMustStartWithDollar.
  ///
  /// In zh, this message translates to:
  /// **'JSONPath 必须以 \$ 开头：{expression}'**
  String jsonPathMustStartWithDollar(String expression);

  /// No description provided for @unsupportedJsonPath.
  ///
  /// In zh, this message translates to:
  /// **'不支持的 JSONPath：{expression}'**
  String unsupportedJsonPath(String expression);

  /// No description provided for @unsupportedJsonPathSegment.
  ///
  /// In zh, this message translates to:
  /// **'不支持的 JSONPath 片段：[{segment}]'**
  String unsupportedJsonPathSegment(String segment);

  /// No description provided for @jsonPathMissingBracket.
  ///
  /// In zh, this message translates to:
  /// **'JSONPath 缺少 ]：{expression}'**
  String jsonPathMissingBracket(String expression);

  /// No description provided for @jsonPathParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'JSONPath 解析失败 {expression}：{error}'**
  String jsonPathParseFailed(String expression, String error);

  /// No description provided for @apiResponseInvalidJson.
  ///
  /// In zh, this message translates to:
  /// **'API 响应不是有效 JSON：{error}'**
  String apiResponseInvalidJson(String error);

  /// No description provided for @onlyGetPostSupported.
  ///
  /// In zh, this message translates to:
  /// **'仅支持 GET/POST，当前为 {method}'**
  String onlyGetPostSupported(String method);

  /// No description provided for @apiRequestUrlRequired.
  ///
  /// In zh, this message translates to:
  /// **'API 请求 URL 不能为空'**
  String get apiRequestUrlRequired;

  /// No description provided for @apiRequestUrlInvalid.
  ///
  /// In zh, this message translates to:
  /// **'API 请求 URL 无效：{url}'**
  String apiRequestUrlInvalid(String url);

  /// No description provided for @searchNodeMissingNameOrSource.
  ///
  /// In zh, this message translates to:
  /// **'搜索节点 {index} 缺少名称或来源，已跳过'**
  String searchNodeMissingNameOrSource(int index);

  /// No description provided for @searchNodeParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'搜索节点 {index} 解析失败：{error}'**
  String searchNodeParseFailed(int index, String error);

  /// No description provided for @chapterVariableNoMatch.
  ///
  /// In zh, this message translates to:
  /// **'章节响应变量 {name} 未匹配到值：{path}'**
  String chapterVariableNoMatch(String name, String path);

  /// No description provided for @episodeNodeMissingUrl.
  ///
  /// In zh, this message translates to:
  /// **'线路 {road} 的剧集节点 {episode} 缺少 URL，已跳过'**
  String episodeNodeMissingUrl(int road, int episode);

  /// No description provided for @episodeNodeParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'线路 {road} 的剧集节点 {episode} 解析失败：{error}'**
  String episodeNodeParseFailed(int road, int episode, String error);

  /// No description provided for @roadNodeNoValidEpisodes.
  ///
  /// In zh, this message translates to:
  /// **'线路节点 {road} 没有有效剧集，已跳过'**
  String roadNodeNoValidEpisodes(int road);

  /// No description provided for @roadNodeParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'线路节点 {road} 解析失败：{error}'**
  String roadNodeParseFailed(int road, String error);

  /// No description provided for @episodeEntryMissingSeparator.
  ///
  /// In zh, this message translates to:
  /// **'线路 {road} 的剧集条目 {episode} 缺少字段分隔符，已跳过'**
  String episodeEntryMissingSeparator(int road, int episode);

  /// No description provided for @episodeEntryMissingUrl.
  ///
  /// In zh, this message translates to:
  /// **'线路 {road} 的剧集条目 {episode} 缺少 URL，已跳过'**
  String episodeEntryMissingUrl(int road, int episode);

  /// No description provided for @episodeEntryParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'线路 {road} 的剧集条目 {episode} 解析失败：{error}'**
  String episodeEntryParseFailed(int road, int episode, String error);

  /// No description provided for @roadNoValidEpisodes.
  ///
  /// In zh, this message translates to:
  /// **'线路 {road} 没有有效剧集，已跳过'**
  String roadNoValidEpisodes(int road);

  /// No description provided for @playbackRouteNumber.
  ///
  /// In zh, this message translates to:
  /// **'播放线路{number}'**
  String playbackRouteNumber(int number);

  /// No description provided for @playPageTemplateRequired.
  ///
  /// In zh, this message translates to:
  /// **'播放页地址模板不能为空'**
  String get playPageTemplateRequired;

  /// No description provided for @episodePageUrlInvalid.
  ///
  /// In zh, this message translates to:
  /// **'剧集页面 URL 无效：{url}'**
  String episodePageUrlInvalid(String url);

  /// No description provided for @chapterSeparatorsRequired.
  ///
  /// In zh, this message translates to:
  /// **'章节分隔符不能为空'**
  String get chapterSeparatorsRequired;

  /// No description provided for @playbackEntryOrTemplateRequired.
  ///
  /// In zh, this message translates to:
  /// **'必须配置播放入口地址路径或播放页地址模板'**
  String get playbackEntryOrTemplateRequired;

  /// No description provided for @missingTemplateVariable.
  ///
  /// In zh, this message translates to:
  /// **'缺少模板变量 @{name}'**
  String missingTemplateVariable(String name);

  /// No description provided for @searchUrlInvalid.
  ///
  /// In zh, this message translates to:
  /// **'搜索 URL 无效：{url}'**
  String searchUrlInvalid(String url);

  /// No description provided for @chapterUrlInvalid.
  ///
  /// In zh, this message translates to:
  /// **'章节 URL 无效：{url}'**
  String chapterUrlInvalid(String url);

  /// No description provided for @htmlResponseHasNoRoot.
  ///
  /// In zh, this message translates to:
  /// **'HTML 响应没有根节点'**
  String get htmlResponseHasNoRoot;

  /// No description provided for @htmlResponseParseFailed.
  ///
  /// In zh, this message translates to:
  /// **'HTML 响应解析失败'**
  String get htmlResponseParseFailed;

  /// No description provided for @xpathRequired.
  ///
  /// In zh, this message translates to:
  /// **'{label} XPath 不能为空'**
  String xpathRequired(String label);

  /// No description provided for @xpathInvalid.
  ///
  /// In zh, this message translates to:
  /// **'{label} XPath 无效：{expression}'**
  String xpathInvalid(String label, String expression);

  /// No description provided for @importContentEmpty.
  ///
  /// In zh, this message translates to:
  /// **'导入内容为空'**
  String get importContentEmpty;

  /// No description provided for @noValidRuleImportContent.
  ///
  /// In zh, this message translates to:
  /// **'未找到有效的 JSON 或 kazumi:// 规则链接'**
  String get noValidRuleImportContent;

  /// No description provided for @importEntryError.
  ///
  /// In zh, this message translates to:
  /// **'第 {index} 条：{error}'**
  String importEntryError(int index, String error);

  /// No description provided for @ruleLinkMustBeJsonObject.
  ///
  /// In zh, this message translates to:
  /// **'规则链接内容必须是 JSON 对象'**
  String get ruleLinkMustBeJsonObject;

  /// No description provided for @ruleMustBeJsonOrLink.
  ///
  /// In zh, this message translates to:
  /// **'规则必须是 JSON 对象或 kazumi:// 链接'**
  String get ruleMustBeJsonOrLink;

  /// No description provided for @ruleNameRequired.
  ///
  /// In zh, this message translates to:
  /// **'规则名称不能为空'**
  String get ruleNameRequired;

  /// No description provided for @unknown.
  ///
  /// In zh, this message translates to:
  /// **'未知'**
  String get unknown;

  /// No description provided for @bangumiTokenUnauthorized.
  ///
  /// In zh, this message translates to:
  /// **'Bangumi token 未授权，请检查你的 token'**
  String get bangumiTokenUnauthorized;

  /// No description provided for @fetchingCollection.
  ///
  /// In zh, this message translates to:
  /// **'正在拉取{type}收藏'**
  String fetchingCollection(String type);
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
