// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Kazumi Max';

  @override
  String get appearanceSettings => 'Appearance';

  @override
  String get settings => 'Settings';

  @override
  String get settingsGroupPlayback => 'Playback';

  @override
  String get settingsGroupResources => 'Resources';

  @override
  String get settingsGroupApplication => 'Application';

  @override
  String get settingsGroupOther => 'Other';

  @override
  String get playerSettings => 'Playback';

  @override
  String get playerSettingsDescription =>
      'Decoding, rendering, and playback behavior';

  @override
  String get danmakuSettings => 'Danmaku';

  @override
  String get danmakuSettingsDescription =>
      'Danmaku sources and display effects';

  @override
  String get controlSettings => 'Controls';

  @override
  String get controlSettingsDescription => 'Player button mappings';

  @override
  String get pluginManagement => 'Rules';

  @override
  String get pluginManagementDescription => 'Anime source rules';

  @override
  String get downloadSettings => 'Downloads';

  @override
  String get downloadSettingsDescription => 'Concurrency and danmaku caching';

  @override
  String get appearanceSettingsDescription => 'Theme, colors, and fonts';

  @override
  String get interfaceSettings => 'Interface';

  @override
  String get interfaceSettingsDescription =>
      'Startup page and displayed information';

  @override
  String get syncSettings => 'Sync';

  @override
  String get syncSettingsDescription => 'WebDAV and Bangumi sync';

  @override
  String get proxySettings => 'Proxy';

  @override
  String get proxySettingsDescription => 'HTTP proxy server';

  @override
  String get about => 'About';

  @override
  String get aboutDescription => 'Version, logs, and open-source licenses';

  @override
  String get appearance => 'Appearance';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get followSystem => 'Follow system';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get colorScheme => 'Color scheme';

  @override
  String get colorDefault => 'Default';

  @override
  String get colorTeal => 'Teal';

  @override
  String get colorBlue => 'Blue';

  @override
  String get colorIndigo => 'Indigo';

  @override
  String get colorViolet => 'Violet';

  @override
  String get colorPink => 'Pink';

  @override
  String get colorYellow => 'Yellow';

  @override
  String get colorOrange => 'Orange';

  @override
  String get colorDeepOrange => 'Deep orange';

  @override
  String get dynamicColor => 'Dynamic color';

  @override
  String get useSystemFont => 'Use system font';

  @override
  String get useMiSansDescription => 'Use MI Sans when disabled';

  @override
  String get dynamicColorDescription =>
      'Dynamic color requires Android 12 or later, or a desktop platform';

  @override
  String get display => 'Display';

  @override
  String get oledOptimization => 'OLED optimization';

  @override
  String get oledOptimizationDescription =>
      'Use a pure black background in dark mode';

  @override
  String get window => 'Window';

  @override
  String get useSystemTitleBar => 'Use system title bar';

  @override
  String get restartToApply => 'Restart the app to apply';

  @override
  String get screen => 'Screen';

  @override
  String get screenRefreshRate => 'Screen refresh rate';

  @override
  String get language => 'Language';

  @override
  String get simplifiedChinese => '简体中文';

  @override
  String get english => 'English';

  @override
  String get exitConfirmation => 'Confirm exit';

  @override
  String get exitQuestion => 'Do you want to exit Kazumi Max?';

  @override
  String get doNotAskAgain => 'Don\'t ask again';

  @override
  String get exitApp => 'Exit Kazumi Max';

  @override
  String get minimizeToTray => 'Minimize to tray';

  @override
  String get cancel => 'Cancel';

  @override
  String get showWindow => 'Show window';

  @override
  String get internalError => 'Internal error';

  @override
  String get unknownPath => 'Unknown path';

  @override
  String storageInitializationError(String path) {
    return 'Storage initialization failed\nCurrent storage location: $path\nDelete this directory to reset local storage';
  }

  @override
  String get exitProgram => 'Exit';

  @override
  String get startup => 'Startup';

  @override
  String get startupPage => 'Startup page';

  @override
  String get startupPageDescription =>
      'Choose the page shown when the app opens';

  @override
  String get pagePopular => 'Popular';

  @override
  String get pageTimeline => 'Timeline';

  @override
  String get pageCollection => 'Collection';

  @override
  String get pageMy => 'My';

  @override
  String get displayedInformation => 'Displayed information';

  @override
  String get showRating => 'Show ratings';

  @override
  String get showRatingDescription =>
      'Hide rating information from overviews when disabled';

  @override
  String get showAnimeCounter => 'Show collection counts';

  @override
  String get showAnimeCounterDescription =>
      'Show counts on category tabs in the collection page';

  @override
  String get concurrencySettings => 'Concurrency';

  @override
  String get parallelEpisodes => 'Simultaneous episodes';

  @override
  String get parallelEpisodesDescription =>
      'Number of episodes downloaded in parallel';

  @override
  String episodeCount(int count) {
    return '$count episodes';
  }

  @override
  String get parallelSegments => 'Concurrent segments';

  @override
  String get parallelSegmentsDescription =>
      'Number of segments downloaded per episode';

  @override
  String itemCount(int count) {
    return '$count';
  }

  @override
  String get cacheSettings => 'Cache';

  @override
  String get downloadLocation => 'Download location';

  @override
  String get readingDefaultLocation => 'Reading default location...';

  @override
  String get customDownloadLocationDescription =>
      'Using a custom location; changes only apply to new downloads';

  @override
  String get defaultDownloadLocationDescription =>
      'Using the default location; changes only apply to new downloads';

  @override
  String get restoreDefault => 'Restore default';

  @override
  String get cacheDanmaku => 'Cache danmaku';

  @override
  String get cacheDanmakuDescription =>
      'Cache danmaku data when downloading videos';

  @override
  String get information => 'Information';

  @override
  String get aboutConcurrency => 'About concurrency';

  @override
  String get concurrencyExplanation =>
      '• Episode concurrency: episodes downloaded at the same time\n• Segment concurrency: video segments downloaded per episode\n• Higher concurrency may improve speed but can trigger server limits\n• Changes apply to newly started downloads';

  @override
  String get directorySelectionUnsupported =>
      'This platform does not support selecting a directory';

  @override
  String get selectDownloadLocation => 'Select download location';

  @override
  String get directoryAccessFailed =>
      'Persistent access to this directory could not be granted. Choose another directory.';

  @override
  String get downloadLocationUpdated =>
      'Download location updated; this only applies to new downloads';

  @override
  String directoryWriteFailed(String message) {
    return 'Cannot write to this directory: $message';
  }

  @override
  String downloadLocationSelectionFailed(String error) {
    return 'Failed to select download location: $error';
  }

  @override
  String get defaultDownloadLocationRestored =>
      'Default download location restored; this only applies to new downloads';

  @override
  String get shortcutGroupPlayback => 'Playback controls';

  @override
  String get shortcutGroupVolume => 'Volume';

  @override
  String get shortcutGroupVisuals => 'Video and danmaku';

  @override
  String get shortcutGroupSpeed => 'Speed';

  @override
  String get shortcutGroupOther => 'Other';

  @override
  String get shortcutInstruction =>
      'Tap a key label, then press a new key to change it';

  @override
  String shortcutConflict(String name) {
    return 'This key is already assigned to $name. Press another key.';
  }

  @override
  String get shortcutsRestored => 'Default shortcuts restored';

  @override
  String get pressAnyKey => 'Press any key';

  @override
  String get addKey => 'Add key';

  @override
  String get keySpace => 'Space';

  @override
  String get keyEnter => 'Enter';

  @override
  String get keyBackspace => 'Backspace';

  @override
  String get shortcutPlayPause => 'Play / Pause';

  @override
  String get shortcutForward => 'Forward / Hold for speed';

  @override
  String get shortcutRewind => 'Rewind';

  @override
  String get shortcutNext => 'Next episode';

  @override
  String get shortcutPrevious => 'Previous episode';

  @override
  String get shortcutVolumeUp => 'Volume up';

  @override
  String get shortcutVolumeDown => 'Volume down';

  @override
  String get shortcutMute => 'Mute';

  @override
  String get shortcutFullscreen => 'Fullscreen';

  @override
  String get shortcutExitFullscreen => 'Exit fullscreen';

  @override
  String get shortcutToggleDanmaku => 'Toggle danmaku';

  @override
  String get shortcutScreenshot => 'Screenshot';

  @override
  String get shortcutSkip => 'Skip';

  @override
  String shortcutSpeedPreset(int speed) {
    return 'Speed: ${speed}x';
  }

  @override
  String get shortcutSpeedUp => 'Increase speed';

  @override
  String get shortcutSpeedDown => 'Decrease speed';

  @override
  String get proxy => 'Proxy';

  @override
  String get enableProxy => 'Enable proxy';

  @override
  String get enableProxyDescription =>
      'Route network requests through the proxy server';

  @override
  String get proxyConfiguration => 'Proxy configuration';

  @override
  String get proxyConfigurationDescription =>
      'Configure the proxy server address and authentication';

  @override
  String get completeProxyTestFirst =>
      'Complete a successful test in proxy configuration first';

  @override
  String get proxyAddress => 'Proxy address';

  @override
  String get enterProxyAddress => 'Enter a proxy address';

  @override
  String get invalidProxyFormat => 'Invalid format. Use http://host:port';

  @override
  String get testAddress => 'Test address';

  @override
  String get saveAndTest => 'Save and test';

  @override
  String get testSucceeded => 'Test succeeded';

  @override
  String get proxyConnectionFailed => 'Proxy connection failed';

  @override
  String get restoreDefaultPlayerSettings =>
      'Restore default playback settings';

  @override
  String get restoreDefaultPlayerSettingsConfirmation =>
      'Playback, hardware decoder, video renderer, and super-resolution settings will be restored to their defaults.';

  @override
  String get defaultPlayerSettingsRestored =>
      'Default playback settings restored';

  @override
  String get confirm => 'OK';

  @override
  String get enterNumber => 'Enter a number';

  @override
  String get enterPositiveNumber => 'Enter a number greater than 0';

  @override
  String seconds(num count) {
    return '$count seconds';
  }

  @override
  String get decodingAndRendering => 'Decoding and rendering';

  @override
  String get hardwareDecoding => 'Hardware decoding';

  @override
  String get hardwareDecoder => 'Hardware decoder';

  @override
  String get hardwareDecoderEnabledDescription =>
      'Only applies when hardware decoding is enabled';

  @override
  String get videoRenderer => 'Video renderer';

  @override
  String get videoRendererDescription => 'Choose the video output method';

  @override
  String get lowMemoryMode => 'Low-memory mode';

  @override
  String get lowMemoryModeMetered =>
      'Automatically enabled on metered networks';

  @override
  String get lowMemoryModeDescription =>
      'Disable advanced caching to reduce memory use';

  @override
  String get lowLatencyAudio => 'Low-latency audio';

  @override
  String get lowLatencyAudioDescription =>
      'Use OpenSLES audio output to reduce latency';

  @override
  String get superResolution => 'Super resolution';

  @override
  String get playbackBehavior => 'Playback behavior';

  @override
  String get backgroundPlayback => 'Background playback';

  @override
  String get backgroundPlaybackDescription =>
      'Continue playing audio in the background or when the screen is off';

  @override
  String get resumePlayback => 'Resume playback';

  @override
  String get resumePlaybackDescription =>
      'Jump to the previous playback position';

  @override
  String get autoPlayNext => 'Auto-play next';

  @override
  String get autoPlayNextDescription =>
      'Play the next episode when the current video ends';

  @override
  String get autoPictureInPicture => 'Automatic picture-in-picture';

  @override
  String get autoPictureInPictureDescription =>
      'Enter picture-in-picture when the app goes to the background';

  @override
  String get adFiltering => 'Ad filtering';

  @override
  String get adFilteringDescription =>
      'Force HLS ad filtering regardless of the rule setting';

  @override
  String get disableAnimations => 'Disable animations';

  @override
  String get disableAnimationsDescription =>
      'Disable transitions inside the player';

  @override
  String get swipeGestures => 'Swipe gestures';

  @override
  String get swipeGesturesDescription =>
      'Swipe vertically to adjust volume and brightness';

  @override
  String get privateMode => 'Private mode';

  @override
  String get privateModeDescription => 'Do not save watch history';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get playerErrorMessages => 'Error messages';

  @override
  String get playerErrorMessagesDescription => 'Show internal player errors';

  @override
  String get debugMode => 'Debug mode';

  @override
  String get debugModeDescription => 'Record internal player logs';

  @override
  String get logLevel => 'Log level';

  @override
  String get logLevelDescription => 'Internal player log level';

  @override
  String get logLevelError => 'Error';

  @override
  String get logLevelWarning => 'Warning';

  @override
  String get logLevelBrief => 'Brief';

  @override
  String get logLevelDetailed => 'Detailed';

  @override
  String get playbackParameters => 'Playback parameters';

  @override
  String get defaultPlaybackSpeed => 'Default speed';

  @override
  String get holdPlaybackSpeed => 'Hold speed';

  @override
  String get holdPlaybackSpeedDescription =>
      'Speed used while holding the screen or an arrow key';

  @override
  String get arrowKeySeek => 'Arrow-key seek';

  @override
  String get arrowKeySeekDescription =>
      'Seconds skipped by the left and right arrow keys';

  @override
  String get skipDuration => 'Skip duration';

  @override
  String get skipDurationDescription => 'Seconds skipped by the top-bar button';

  @override
  String get topButtonSkipDuration => 'Top-button skip duration';

  @override
  String get controlsHideDelay => 'Controls hide delay';

  @override
  String get controlsHideDelayDescription =>
      'Time before the playback controls hide automatically';

  @override
  String get defaultVideoFit => 'Default video fit';

  @override
  String get videoFitAutomatic => 'Automatic';

  @override
  String get videoFitCrop => 'Crop to fill';

  @override
  String get videoFitStretch => 'Stretch to fill';

  @override
  String get restoreDefaultSettings => 'Restore defaults';

  @override
  String get restorePlaybackSettingsDescription =>
      'Restore playback-related settings to their defaults';

  @override
  String get unsupportedDecoderFallback =>
      'Unsupported decoders will fall back to software decoding';

  @override
  String get decoderAny => 'Enable any available decoder';

  @override
  String get decoderBest => 'Enable the best decoder';

  @override
  String get decoderBestCopy => 'Enable the best decoder with copying';

  @override
  String get decoderWindows8 => 'DirectX 11 (Windows 8 or later)';

  @override
  String get decoderWindows7 => 'DXVA2 (Windows 7 or later)';

  @override
  String decoderNoDirect(String name) {
    return '$name (copy-back)';
  }

  @override
  String decoderNvidiaOnly(String name) {
    return '$name (NVIDIA only)';
  }

  @override
  String decoderExperimental(String name) {
    return '$name (all platforms, experimental)';
  }

  @override
  String decoderDeprecated(String name) {
    return '$name (deprecated)';
  }

  @override
  String get decoderRockchip => 'Rockchip MPP (selected Rockchip chips only)';

  @override
  String get rendererAutomatic => 'Automatic';

  @override
  String get rendererGpu => 'OpenGL-based, general-purpose and stable';

  @override
  String get rendererGpuNext => 'Vulkan-based, best on newer devices';

  @override
  String get rendererMediaCodec =>
      'Lowest power use; does not support super resolution';

  @override
  String get selectRendererDescription =>
      'Choose a suitable renderer for the best playback experience';

  @override
  String get superResolutionRequirement =>
      'Super resolution requires hardware decoding. If it still does not work, try switching the video renderer to gpu.';

  @override
  String get defaultBehavior => 'Default behavior';

  @override
  String get disablePrompt => 'Disable prompt';

  @override
  String get disableSuperResolutionPromptDescription =>
      'Do not show a prompt whenever super resolution is enabled';

  @override
  String get superResolutionOff => 'Off';

  @override
  String get superResolutionOffDescription =>
      'Disable super resolution by default';

  @override
  String get superResolutionEfficiency => 'Efficiency';

  @override
  String get superResolutionEfficiencyDescription =>
      'Enable Anime4K super resolution by default, prioritizing efficiency';

  @override
  String get superResolutionQuality => 'Quality';

  @override
  String get superResolutionQualityDescription =>
      'Enable Anime4K super resolution by default, prioritizing quality';

  @override
  String get restoreDefaultDanmakuSettings =>
      'Restore default danmaku settings';

  @override
  String get restoreDefaultDanmakuSettingsConfirmation =>
      'Danmaku source, display, and style settings will be restored. The keyword block list will not be cleared.';

  @override
  String get defaultDanmakuSettingsRestored =>
      'Default danmaku settings restored';

  @override
  String get danmakuSource => 'Danmaku sources';

  @override
  String get danDanPlay => 'DanDanPlay';

  @override
  String get danmakuBlocking => 'Danmaku blocking';

  @override
  String get keywordBlocking => 'Keyword blocking';

  @override
  String get danmakuDisplay => 'Danmaku display';

  @override
  String get danmakuArea => 'Danmaku area';

  @override
  String get danmakuDuration => 'Danmaku duration';

  @override
  String get duration => 'Duration';

  @override
  String get lineHeight => 'Line height';

  @override
  String get danmakuLineHeight => 'Danmaku line height';

  @override
  String get danmakuFollowSpeed => 'Match playback speed';

  @override
  String get followPlaybackSpeed => 'Follow playback speed';

  @override
  String get danmakuFollowSpeedDescription =>
      'Change danmaku speed with the playback speed';

  @override
  String get followPlaybackSpeedDescription =>
      'Danmaku speed changes with playback speed';

  @override
  String get topDanmaku => 'Top danmaku';

  @override
  String get bottomDanmaku => 'Bottom danmaku';

  @override
  String get scrollingDanmaku => 'Scrolling danmaku';

  @override
  String get massiveDanmaku => 'Dense danmaku';

  @override
  String get massiveDanmakuDescription =>
      'Overlay danmaku when too many are displayed';

  @override
  String get danmakuDeduplication => 'Deduplicate danmaku';

  @override
  String get danmakuDeduplicationDescription =>
      'Merge excessive danmaku with identical content';

  @override
  String get danmakuStyle => 'Danmaku style';

  @override
  String get danmakuBorder => 'Danmaku outline';

  @override
  String get danmakuBorderWidth => 'Outline width';

  @override
  String get danmakuColor => 'Danmaku colors';

  @override
  String get fontSize => 'Font size';

  @override
  String get fontWeight => 'Font weight';

  @override
  String get danmakuOpacity => 'Danmaku opacity';

  @override
  String get restoreDanmakuSettingsDescription =>
      'Restore danmaku-related settings to their defaults';

  @override
  String get danmakuSettingsSheetDescription =>
      'Adjust danmaku display, style, and blocking rules';

  @override
  String get timelineOffset => 'Timeline offset';

  @override
  String get danmakuTimeOffset => 'Danmaku timeline offset';

  @override
  String get danmakuTimeOffsetDescription =>
      'Calibrate when danmaku appears relative to the video';

  @override
  String get noOffset => 'No offset';

  @override
  String get advance => 'Advance';

  @override
  String get delay => 'Delay';

  @override
  String offsetWithDuration(String direction, String duration) {
    return '$direction $duration';
  }

  @override
  String get advanceOneSecond => 'Advance 1 second';

  @override
  String get delayOneSecond => 'Delay 1 second';

  @override
  String get restoreNoOffset => 'Reset offset';

  @override
  String get danmakuShieldDescription =>
      'Filter danmaku using keywords or regular expressions';

  @override
  String get addBlockingRule => 'Add blocking rule';

  @override
  String get regexBlockingDescription =>
      'Text beginning and ending with “/” is treated as a regular expression; for example, “/\\d+/” blocks all numbers';

  @override
  String get blockingRuleHint => 'Enter a keyword or regular expression';

  @override
  String get add => 'Add';

  @override
  String blockingRuleCount(int count) {
    return '$count keywords added';
  }

  @override
  String get displayRefreshRateSettings => 'Screen refresh rate';

  @override
  String get restartIfRefreshRateNotApplied =>
      'Not applied? Try restarting the app';

  @override
  String get automatic => 'Automatic';

  @override
  String get systemActive => 'System';
}
