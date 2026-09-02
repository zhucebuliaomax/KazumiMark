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

  @override
  String get badCertificate => 'The certificate is invalid.';

  @override
  String get serverErrorRetry => 'Server error. Try again later.';

  @override
  String get requestCancelledRetry => 'The request was cancelled. Try again.';

  @override
  String get connectionErrorCheckSettings =>
      'Connection error. Check your network settings.';

  @override
  String get connectionTimeoutCheckSettings =>
      'Connection timed out. Check your network settings.';

  @override
  String get responseTimeoutRetry => 'The response timed out. Try again later.';

  @override
  String get sendTimeoutCheckSettings =>
      'The request timed out while sending. Check your network settings.';

  @override
  String get responseParseTimeoutRetry =>
      'Response parsing timed out. Try again later.';

  @override
  String networkException(String connection) {
    return '$connection Network error';
  }

  @override
  String get responseParseFailed => 'Failed to parse the response';

  @override
  String get usingMobileData => 'Using mobile data.';

  @override
  String get usingWifi => 'Using Wi-Fi.';

  @override
  String get usingEthernet => 'Using Ethernet.';

  @override
  String get usingVpn => 'Using a VPN.';

  @override
  String get usingOtherNetwork => 'Using another network.';

  @override
  String get notConnected => 'Not connected to a network.';

  @override
  String get enterKeyword => 'Enter a keyword';

  @override
  String get keywordTooLong => 'The keyword is too long';

  @override
  String get keywordAlreadyExists => 'This keyword already exists';

  @override
  String get updateCheckFailedRetry =>
      'Failed to check for updates. Try again later.';

  @override
  String get playerLoadFailedTryAnotherSource =>
      'Loading failed. Try another video source.';

  @override
  String get noAvailableCache => 'No available cache found';

  @override
  String get onlineSourceUnavailable =>
      'The online source is unavailable. Choose another source.';

  @override
  String get launchingExternalPlayer => 'Opening external player';

  @override
  String get externalPlayerLaunchFailed => 'Failed to open external player';

  @override
  String get systemAppPickerUnavailable =>
      'The system app picker is unavailable';

  @override
  String get deviceUnsupported => 'This device is not supported yet';

  @override
  String get ruleUnsupported => 'This rule is not supported yet';

  @override
  String get downloadService => 'Download service';

  @override
  String get downloadServiceDescription => 'Background video download service';

  @override
  String get downloading => 'Downloading';

  @override
  String get preparing => 'Preparing...';

  @override
  String get pauseAll => 'Pause all';

  @override
  String get downloadPaused => 'Downloads paused';

  @override
  String taskCount(int count) {
    return '$count tasks';
  }

  @override
  String downloadingProgress(int active, int total) {
    return 'Downloading ($active/$total)';
  }

  @override
  String get insufficientStorage => 'Insufficient storage';

  @override
  String get insufficientStorageRetry =>
      'Insufficient storage. Free some space and try again.';

  @override
  String get storagePermissionDenied => 'Storage permission was denied';

  @override
  String get storageReadOnly => 'Storage is read-only';

  @override
  String storageErrorMessage(String message) {
    return 'Storage error: $message';
  }

  @override
  String get liveStreamDownloadUnsupported =>
      'Live streams cannot be downloaded (no valid segments)';

  @override
  String get m3u8NoSegments =>
      'No downloadable segments found in the M3U8 playlist';

  @override
  String segmentDownloadFailed(int count) {
    return 'Failed to download $count segments';
  }

  @override
  String insufficientStorageAvailable(String available) {
    return 'Insufficient storage (available: $available)';
  }

  @override
  String get urlNotM3u8 => 'The URL is not an M3U8 playlist';

  @override
  String get responseTooLargeNotM3u8 =>
      'The response is too large to be an M3U8 playlist';

  @override
  String get timedShutdown => 'Sleep timer';

  @override
  String get timedShutdownExpired => 'The timer ended and the video was paused';

  @override
  String timerRestarted(int minutes) {
    return 'Restarted the $minutes-minute timer';
  }

  @override
  String get repeat => 'Repeat';

  @override
  String get close => 'Close';

  @override
  String hoursAndMinutes(int hours, int minutes) {
    return '$hours hr $minutes min';
  }

  @override
  String hourCount(int hours) {
    return '$hours hr';
  }

  @override
  String minuteCount(int minutes) {
    return '$minutes min';
  }

  @override
  String get customTimer => 'Custom timer';

  @override
  String get selectValidTime => 'Select a valid duration';

  @override
  String timedShutdownSet(String duration) {
    return 'Sleep timer set for $duration';
  }

  @override
  String get hoursShort => 'hr';

  @override
  String get minutesShort => 'min';

  @override
  String get bangumiDeleteUnsupported =>
      'Bangumi does not support deleting collections';

  @override
  String get bangumiDeleteExplanation =>
      'For safety reasons, Bangumi does not provide a delete API. You can mark the collection as “Dropped” both locally and remotely, or delete it locally and open the website to remove it from Bangumi manually.';

  @override
  String get openWebPage => 'Open website';

  @override
  String get markAsAbandoned => 'Mark as dropped';

  @override
  String get bangumiPageOpenFailed => 'Could not open the Bangumi page';

  @override
  String get bangumiNotInitializedChangeCancelled =>
      'Bangumi is not initialized. Sync failed and the status change was cancelled';

  @override
  String get syncingToBangumi => 'Syncing to Bangumi…';

  @override
  String get syncedToBangumi => 'Synced to Bangumi';

  @override
  String get bangumiSyncFailedChangeCancelled =>
      'Bangumi sync failed and the status change was cancelled';

  @override
  String bangumiSyncFailedChangeCancelledWithError(String error) {
    return 'Bangumi sync failed and the status change was cancelled: $error';
  }

  @override
  String get webDavCollectSyncDisabled => 'WebDAV collection sync is disabled';

  @override
  String get webDavDisabledOrInvalid =>
      'WebDAV sync is disabled or its configuration is invalid';

  @override
  String webDavConnectionFailed(String error) {
    return 'WebDAV connection failed: $error';
  }

  @override
  String get webDavSyncComplete => 'WebDAV sync complete';

  @override
  String webDavSyncFailed(String error) {
    return 'WebDAV sync failed: $error';
  }

  @override
  String get webDavUploadComplete => 'WebDAV upload complete';

  @override
  String webDavUploadFailed(String error) {
    return 'WebDAV upload failed: $error';
  }

  @override
  String get bangumiSyncDisabledEnableInSettings =>
      'Bangumi sync is disabled. Enable it in Settings first';

  @override
  String get bangumiSyncNotInitializedCheckToken =>
      'Bangumi sync is enabled but not initialized. Check the token and try again';

  @override
  String get bangumiSyncComplete => 'Bangumi sync complete';

  @override
  String get noSyncDifferences =>
      'No status differences found; nothing to sync';

  @override
  String bangumiSyncFailed(String error) {
    return 'Bangumi sync failed: $error';
  }

  @override
  String bangumiAccessFailed(String error) {
    return 'Could not access Bangumi: $error';
  }

  @override
  String get enterBangumiAccessToken => 'Enter a Bangumi Access Token first';

  @override
  String get bangumiOperationInProgress =>
      'Bangumi: another operation is in progress. Try again later';

  @override
  String get bangumiUsernameFailed =>
      'Bangumi: failed to retrieve the username';

  @override
  String get syncDisabled => 'Sync is disabled';

  @override
  String get bangumiSyncInProgress => 'Bangumi sync is already in progress';

  @override
  String get startingBangumiSync => 'Starting Bangumi status sync';

  @override
  String get uploadingLocalStatus => 'Uploading new local statuses';

  @override
  String get uploadLocalStatusFailed => 'Failed to upload new local statuses';

  @override
  String bangumiItemUploadFailed(int id) {
    return 'Sync failed: could not upload item $id to Bangumi';
  }

  @override
  String get fillingMissingLocalStatus => 'Adding statuses missing locally';

  @override
  String get resolvingConflictsLocalFirst =>
      'Resolving conflicts with local data taking priority';

  @override
  String get resolvingConflictsBangumiFirst =>
      'Resolving conflicts with Bangumi taking priority';

  @override
  String get bangumiStatusSyncComplete => 'Bangumi status sync complete';

  @override
  String get enterWebDavUrl => 'Enter a WebDAV URL first';

  @override
  String episodeNumber(int number) {
    return 'Episode $number';
  }

  @override
  String get episodeParseFailed => 'Could not parse the episode';

  @override
  String get episodeNotDownloaded => 'This episode has not been downloaded';

  @override
  String get danmakuLoadFailedManualSearch =>
      'Failed to load danmaku; you can search manually';

  @override
  String get videoParseTimeoutRetry => 'Video resolution timed out. Try again';

  @override
  String videoParseFailed(String error) {
    return 'Video resolution failed: $error';
  }

  @override
  String playlistNumber(int number) {
    return 'Playlist $number';
  }

  @override
  String syncPlayInvalidServer(String endpoint) {
    return 'SyncPlay: invalid server address $endpoint';
  }

  @override
  String syncPlayInterrupted(String message) {
    return 'SyncPlay: synchronization interrupted: $message';
  }

  @override
  String get reconnect => 'Reconnect';

  @override
  String get syncPlayOnlyUser => 'SyncPlay: you are the only user in this room';

  @override
  String syncPlayFollowingUser(String username) {
    return 'SyncPlay: following $username\'s playback position';
  }

  @override
  String syncPlayUserLeft(String username) {
    return 'SyncPlay: $username left the room';
  }

  @override
  String syncPlayUserJoined(String username) {
    return 'SyncPlay: $username joined the room';
  }

  @override
  String get unknownUser => 'Unknown user';

  @override
  String syncPlayEpisodeChanged(String username, int episode) {
    return 'SyncPlay: $username switched to episode $episode';
  }

  @override
  String syncPlayPaused(String username) {
    return 'SyncPlay: $username paused playback';
  }

  @override
  String syncPlayStarted(String username) {
    return 'SyncPlay: $username started playback';
  }

  @override
  String syncPlayConnectionFailed(String message) {
    return 'SyncPlay: connection failed: $message';
  }

  @override
  String playerInternalError(String error, String url) {
    return 'Internal player error: $error $url';
  }

  @override
  String get mobileDataLowMemoryMode =>
      'Using mobile data; low-memory mode was temporarily enabled to reduce caching';

  @override
  String get remoteCasting => 'Cast to device';

  @override
  String get exit => 'Exit';

  @override
  String get startSearching => 'Searching for devices';

  @override
  String castingToDevice(String device) {
    return 'Trying to cast to $device';
  }

  @override
  String dlnaErrorRetry(String error) {
    return 'DLNA error: $error\nReopen casting or try another device';
  }

  @override
  String get search => 'Search';

  @override
  String get filter => 'Filter';

  @override
  String get imageSearch => 'Search by image';

  @override
  String tagFilter(String tag) {
    return 'Tag: $tag';
  }

  @override
  String sortFilter(String sort) {
    return 'Sort: $sort';
  }

  @override
  String seasonFilter(String season) {
    return 'Season: $season';
  }

  @override
  String dateFilter(String range) {
    return 'Date: $range';
  }

  @override
  String rankFilter(String range) {
    return 'Rank: $range';
  }

  @override
  String scoreFilter(String range) {
    return 'Score: $range';
  }

  @override
  String weekdayFilter(String weekdays) {
    return 'Weekday: $weekdays';
  }

  @override
  String get hideWatched => 'Hide watched';

  @override
  String get hideAbandoned => 'Hide dropped';

  @override
  String get noSearchSuggestions => 'No suggestions. Press Enter to search';

  @override
  String get nothingFound => 'Nothing was found (;´༎ຶД༎ຶ`)';

  @override
  String get tapToRetry => 'Tap to retry';

  @override
  String get filterConditions => 'Filters';

  @override
  String get filterConditionsDescription =>
      'Combine tags, seasons, scores, and other filters to find anime faster.';

  @override
  String get sort => 'Sort';

  @override
  String get sortDescription => 'Choose which results appear first.';

  @override
  String get sortHeat => 'Popularity';

  @override
  String get sortRank => 'Rank';

  @override
  String get sortScore => 'Score';

  @override
  String get sortMatch => 'Relevance';

  @override
  String get tags => 'Tags';

  @override
  String get tagsDescription =>
      'When multiple tags are selected, anime matching all of them are preferred.';

  @override
  String get customTag => 'Custom tag';

  @override
  String get addTag => 'Add tag';

  @override
  String get clearTags => 'Clear tags';

  @override
  String get seasonAndDate => 'Season and date';

  @override
  String get seasonAndDateDescription =>
      'Search by broadcast season or choose a more precise date range.';

  @override
  String get season => 'Season';

  @override
  String get customDate => 'Custom date';

  @override
  String get anyDate => 'Any date';

  @override
  String get numericRange => 'Numeric ranges';

  @override
  String get numericRangeDescription =>
      'Only show anime within the selected score or ranking range.';

  @override
  String get enableScoreRange => 'Enable score range';

  @override
  String get enableRankRange => 'Enable rank range';

  @override
  String get weekday => 'Weekday';

  @override
  String get weekdayDescription =>
      'Filter by broadcast weekday; selecting several matches any of them.';

  @override
  String weekdayNumber(int number) {
    return 'Day $number';
  }

  @override
  String get filterSection => 'Visibility';

  @override
  String get filterSectionDescription =>
      'Choose whether to hide watched or dropped anime.';

  @override
  String get reset => 'Reset';

  @override
  String get apply => 'Apply';

  @override
  String get winter => 'Winter';

  @override
  String get spring => 'Spring';

  @override
  String get summer => 'Summer';

  @override
  String get autumn => 'Autumn';

  @override
  String get imageTooLarge => 'Images must be 25 MB or smaller';

  @override
  String get enterValidImageUrl => 'Enter a valid image URL';

  @override
  String get selectImageFirst => 'Select an image file first';

  @override
  String get unknownAnime => 'Unknown anime';

  @override
  String episodeValue(String episode) {
    return 'Episode $episode';
  }

  @override
  String episodesValue(String episodes) {
    return 'Episodes: $episodes';
  }

  @override
  String get unknownEpisode => 'Unknown episode';

  @override
  String get switchToImageUpload => 'Upload an image file instead';

  @override
  String get switchToImageUrl => 'Enter an image URL instead';

  @override
  String get searching => 'Searching…';

  @override
  String get startSearch => 'Start search';

  @override
  String get selectImage => 'Tap to select an image';

  @override
  String get supportedImageFormats => 'Supports JPG, PNG, and WEBP';

  @override
  String get imagePreviewFailed => 'Could not preview the image';

  @override
  String get imageSelected => 'Image selected';

  @override
  String get tapToReselectImage => 'Tap to choose another image';

  @override
  String get reselect => 'Choose again';

  @override
  String get enterImageUrl => 'Enter an image URL';

  @override
  String get clear => 'Clear';

  @override
  String get imageUrlPreviewHint => 'Enter an image URL to preview it';

  @override
  String get loading => 'Loading…';

  @override
  String get imageLoadFailed => 'Could not load the image';

  @override
  String get checkLinkValidity => 'Check that the link is valid';

  @override
  String get recognizingImage => 'Identifying image';

  @override
  String get recognizingImageDescription =>
      'Please wait while the screenshot is matched to an anime';

  @override
  String get imageResultsPlaceholder => 'Search results will appear here';

  @override
  String get noImageSearchResults => 'No search results were returned';

  @override
  String get imageSearchStartHint =>
      'Select an image file or enter an image URL to start searching';

  @override
  String get recognitionResults => 'Matches';

  @override
  String similarityValue(String value) {
    return 'Similarity: $value';
  }

  @override
  String timeRangeValue(String range) {
    return 'Time: $range';
  }

  @override
  String get imageSearchOriginalRatioTip =>
      'Use an anime screenshot in its original aspect ratio';

  @override
  String get imageSearchQualityTip =>
      'Use a clear screenshot without heavy compression or watermarks';

  @override
  String get searchEngineProvidedByPrefix => 'Search powered by ';

  @override
  String get searchEngineProvidedBySuffix => '';

  @override
  String get animeImageSearch => 'Anime screenshot search';

  @override
  String get saveRuleOrderFailed => 'Failed to save rule order';

  @override
  String get createRule => 'Create rule';

  @override
  String get importFromRuleRepository => 'Import from rule repository';

  @override
  String get importFromClipboard => 'Import from clipboard';

  @override
  String get importFromFile => 'Import from file';

  @override
  String get importRulesFromClipboard => 'Import rules from clipboard';

  @override
  String get ruleImportInputHint =>
      'Paste multiple kazumi:// links or a JSON array';

  @override
  String get importAction => 'Import';

  @override
  String get selectedFileUnreadable => 'Could not read the selected file';

  @override
  String readRuleFileFailed(String error) {
    return 'Failed to read rule file: $error';
  }

  @override
  String get noRulesToImport => 'No rules to import';

  @override
  String ruleImportSummary(int success, int duplicates, int failures) {
    return 'Import complete: $success succeeded, $duplicates duplicates skipped, $failures failed';
  }

  @override
  String saveImportedRulesFailed(String error) {
    return 'Failed to save imported rules: $error';
  }

  @override
  String get checkRuleUpdatesFailed => 'Failed to check for rule updates';

  @override
  String selectedItemCount(int count) {
    return '$count selected';
  }

  @override
  String get deleteRules => 'Delete rules';

  @override
  String deleteSelectedRulesConfirmation(int count) {
    return 'Delete the $count selected rules?';
  }

  @override
  String get deleteRuleFailed => 'Failed to delete rule';

  @override
  String get delete => 'Delete';

  @override
  String get updateAll => 'Update all';

  @override
  String get addRule => 'Add rule';

  @override
  String get noAvailableRules => 'No rules are available';

  @override
  String get updateAvailable => 'Update available';

  @override
  String get searchValid => 'Search valid';

  @override
  String get ruleUpdateStatusUnavailable =>
      'Rule update status is not available yet';

  @override
  String get ruleNotInRepository => 'This rule is not in the rule repository';

  @override
  String get ruleAlreadyLatest => 'Rule is up to date';

  @override
  String get update => 'Update';

  @override
  String get edit => 'Edit';

  @override
  String get test => 'Test';

  @override
  String get ruleLink => 'Rule link';

  @override
  String get copyToClipboard => 'Copy to clipboard';

  @override
  String get share => 'Share';

  @override
  String get updating => 'Updating';

  @override
  String get importing => 'Importing';

  @override
  String get updateRulesFailed => 'Failed to update rules';

  @override
  String get saveRuleFailed => 'Failed to save rule';

  @override
  String get importSucceeded => 'Imported successfully';

  @override
  String get updateSucceeded => 'Updated successfully';

  @override
  String get ruleRequiresNewerClient =>
      'This rule requires a newer app version';

  @override
  String get importRuleFailed => 'Failed to import rule';

  @override
  String get remoteRuleNotNewer =>
      'The remote rule is not newer; update skipped';

  @override
  String get noRulesToUpdate => 'No rules can be updated';

  @override
  String updateSuccessCount(int count) {
    return 'Updated $count rules';
  }

  @override
  String successCount(int count) {
    return '$count succeeded';
  }

  @override
  String incompatibleCount(int count) {
    return '$count incompatible';
  }

  @override
  String skippedCount(int count) {
    return '$count skipped';
  }

  @override
  String failedCount(int count) {
    return '$count failed';
  }

  @override
  String updateSummary(String summary) {
    return 'Update complete: $summary';
  }

  @override
  String pluginTestTitle(String name) {
    return 'Test $name';
  }

  @override
  String get startTest => 'Start test';

  @override
  String get searchRequestTest => '1. Search request test';

  @override
  String get searchParseTest => '2. Search parsing test';

  @override
  String get chapterListTest => '3. Chapter list test';

  @override
  String get testKeyword => 'Test keyword';

  @override
  String get retryTest => 'Retry test';

  @override
  String get testing => 'Testing…';

  @override
  String get testNotRun => 'Test not run';

  @override
  String responseLength(String format, int count) {
    return '$format length: $count characters';
  }

  @override
  String get runTestHint => 'Tap Start test above to run it';

  @override
  String get parsing => 'Parsing…';

  @override
  String get parseNotRun => 'Parsing not run';

  @override
  String get noParsedResults => 'No results parsed';

  @override
  String skippedSuffix(int count) {
    return ', $count skipped';
  }

  @override
  String parsedResultCount(int count, String skipped) {
    return 'Parsed $count results$skipped';
  }

  @override
  String get completeSearchRequestFirst =>
      'Complete the search request test first';

  @override
  String get noSearchResultsParsed => 'No search results were parsed';

  @override
  String nodesSkipped(int count) {
    return 'Some nodes were skipped ($count)';
  }

  @override
  String get noMatchingFragment => 'No matching fragment';

  @override
  String get hideMatchingFragment => 'Hide matching fragment';

  @override
  String get viewMatchingFragment => 'View matching fragment';

  @override
  String linkValue(String link) {
    return 'Link: $link';
  }

  @override
  String get fetching => 'Fetching…';

  @override
  String get noValidSearchResults => 'No valid search results';

  @override
  String get chapterParsingNotNeeded => 'Chapter parsing is not needed';

  @override
  String get chapterDataNotFetched => 'Chapter data has not been fetched';

  @override
  String playbackRoadCount(int count, String skipped) {
    return 'Fetched $count playback sources$skipped';
  }

  @override
  String get chapterRuleMissing => 'No chapter rule is configured';

  @override
  String get parseValidResultFirst => 'Parse a valid result first';

  @override
  String get noAvailableChapters => 'No chapters available';

  @override
  String playbackRoadTitle(int number, String name) {
    return 'Source $number: $name';
  }

  @override
  String chapterCount(int count) {
    return 'Chapters: $count';
  }

  @override
  String get historyManagement => 'History management';

  @override
  String get clearAllHistoryConfirmation => 'Clear all watch history?';

  @override
  String get history => 'History';

  @override
  String get exitEditMode => 'Exit edit mode';

  @override
  String get clearAll => 'Clear all';

  @override
  String get noHistory => 'No watch history';

  @override
  String get pressBackAgainToExit => 'Press back again to exit';

  @override
  String get agreeAndContinue => 'Agree and continue';

  @override
  String get finish => 'Finish';

  @override
  String get nextStep => 'Next';

  @override
  String get previousStep => 'Back';

  @override
  String get initializeRulesFailed => 'Failed to initialize rules';

  @override
  String get updateSource => 'Update source';

  @override
  String get updateSourceDescription => 'Choose how to receive app updates';

  @override
  String get githubUpdateDescription =>
      'Check for updates in the app; recommended for most users';

  @override
  String get fdroidUpdateDescription => 'Let the F-Droid store manage updates';

  @override
  String get networkMirrors => 'Network mirrors';

  @override
  String get networkMirrorsDescription =>
      'Recommended in mainland China for faster access';

  @override
  String get bangumiMirror => 'Bangumi mirror';

  @override
  String get bangumiMirrorDescription =>
      'Speed up Popular and Timeline loading';

  @override
  String get ruleRepositoryMirror => 'Rule repository mirror';

  @override
  String get ruleRepositoryMirrorDescription =>
      'Speed up rule downloads and updates';

  @override
  String get mirrorSettingsLaterHint =>
      'You can change this later in Settings → Sync settings';

  @override
  String get disclaimerLoadFailed =>
      'Failed to load the disclaimer. Exit and try again.';

  @override
  String get welcome => 'Welcome';

  @override
  String get readAndAcceptDisclaimer => 'Please read and accept the disclaimer';

  @override
  String get addRules => 'Add rules';

  @override
  String get addRulesDescription =>
      'Rules provide anime search sources. You can manage them later in Settings → Rule management';

  @override
  String get popularAnime => 'Popular anime';

  @override
  String watchedToEpisode(String episode) {
    return 'Watched to $episode';
  }

  @override
  String clearLogsFailed(String error) {
    return 'Failed to clear logs: $error';
  }

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String copyFailed(String error) {
    return 'Copy failed: $error';
  }

  @override
  String get logs => 'Logs';

  @override
  String get loadLogsFailed => 'Failed to load logs';

  @override
  String get noLogs => 'No logs';

  @override
  String get clearLogs => 'Clear logs';

  @override
  String get copyLogs => 'Copy logs';

  @override
  String bangumiMirrorLoadError(String status) {
    return 'Could not load data\nBangumi mirror is $status';
  }

  @override
  String get enabledStatus => 'enabled';

  @override
  String get disabledStatus => 'disabled';

  @override
  String get mirrorSwitch => 'Mirror settings';

  @override
  String get continueWatching => 'Continue watching';

  @override
  String get animeUnit => 'titles';

  @override
  String get episodeUnit => 'episodes';

  @override
  String get watchedAnime => 'Anime watched';

  @override
  String get watchedEpisodes => 'Episodes watched';

  @override
  String get offlineCache => 'Offline cache';

  @override
  String recentlyWatchedTitle(String title) {
    return 'Recently watched $title';
  }

  @override
  String get noWatchHistoryYet => 'No watch history yet';

  @override
  String get offlineDownloads => 'Offline downloads';

  @override
  String get downloadTasksAndLocalFiles => 'Download tasks and local files';

  @override
  String get settingsOverviewDescription =>
      'Playback, danmaku, appearance, and rules';

  @override
  String get collectionSummaryHint =>
      'Your collection summary will appear here';

  @override
  String recentlyWatchedTime(String time) {
    return 'Recently watched $time';
  }

  @override
  String get myCollection => 'My collection';

  @override
  String get preparingBangumiCollectionSync =>
      'Preparing to sync the Bangumi collection…';

  @override
  String get webDavSynced => 'WebDAV synced';

  @override
  String get webDavNotCompleted => 'WebDAV not completed';

  @override
  String get bangumiSynced => 'Bangumi synced';

  @override
  String get bangumiNotCompleted => 'Bangumi not completed';

  @override
  String get webDavLatestDataUploaded => 'Latest data uploaded to WebDAV';

  @override
  String get webDavLatestDataNotUploaded =>
      'Latest data not uploaded to WebDAV';

  @override
  String get syncingWebDavCollection => 'Syncing WebDAV collection…';

  @override
  String get uploadingLatestCollectionToWebDav =>
      'Uploading latest collection to WebDAV…';

  @override
  String get syncUnavailableEnableOne =>
      'Sync is unavailable. Enable at least one sync service.';

  @override
  String get syncUnavailableInEditMode => 'Sync is unavailable in edit mode';

  @override
  String get noCollectionContent => 'No collection yet';

  @override
  String get preparingCollectionSync => 'Preparing collection sync…';

  @override
  String get fullCollectionSyncInProgress => 'Full collection sync in progress';

  @override
  String get mondayShort => 'Mon';

  @override
  String get tuesdayShort => 'Tue';

  @override
  String get wednesdayShort => 'Wed';

  @override
  String get thursdayShort => 'Thu';

  @override
  String get fridayShort => 'Fri';

  @override
  String get saturdayShort => 'Sat';

  @override
  String get sundayShort => 'Sun';

  @override
  String get timeMachine => 'Time machine';

  @override
  String get timeMachineDescription =>
      'Jump to any broadcast season. The timeline updates immediately.';

  @override
  String currentlyViewingSeason(String season) {
    return 'Viewing $season';
  }

  @override
  String yearLabel(int year) {
    return '$year';
  }

  @override
  String availableSeasonCount(int count) {
    return '$count seasons available';
  }

  @override
  String get timePriority => 'Time first';

  @override
  String get ratingPriority => 'Rating first';

  @override
  String get popularityPriority => 'Popularity first';

  @override
  String get timelineOptions => 'Timeline options';

  @override
  String get timelineOptionsDescription =>
      'Adjust sorting and filters. Changes apply to the current timeline immediately.';

  @override
  String currentSort(String sort) {
    return 'Current sort: $sort';
  }

  @override
  String get noFiltersEnabled => 'No filters enabled';

  @override
  String enabledFilterCount(int count) {
    return '$count filters enabled';
  }

  @override
  String get filters => 'Filters';

  @override
  String get timelineFiltersDescription =>
      'Hide entries by collection status. You can adjust multiple options.';

  @override
  String get hideAbandonedAnime => 'Hide abandoned anime';

  @override
  String get hideAbandonedAnimeDescription =>
      'Hide entries marked as abandoned.';

  @override
  String get hideWatchedAnime => 'Hide watched anime';

  @override
  String get hideWatchedAnimeTimelineDescription =>
      'Remove completed entries from the timeline.';

  @override
  String get onlyShowWatchingAnime => 'Only show watching';

  @override
  String get onlyShowWatchingAnimeDescription =>
      'Focus on anime you are currently following.';

  @override
  String get sortOrder => 'Sort order';

  @override
  String get timelineSortDescription =>
      'Choose how anime cards are ordered within each day.';

  @override
  String get sortByPopularity => 'Sort by popularity';

  @override
  String get sortByPopularityDescription =>
      'Show entries with more discussion and followers first.';

  @override
  String get sortByRating => 'Sort by rating';

  @override
  String get sortByRatingDescription => 'Show higher-rated entries first.';

  @override
  String get sortByTime => 'Sort by time';

  @override
  String get sortByTimeDescription =>
      'Restore the default broadcast-time order.';

  @override
  String get videoDetails => 'Video details';

  @override
  String get videoDetailsDescription => 'Live playback status and diagnostics';

  @override
  String get status => 'Status';

  @override
  String get copyAllLogs => 'Copy all logs';

  @override
  String get playbackSource => 'Playback source';

  @override
  String get mediaUrl => 'Media URL';

  @override
  String get playlist => 'Playlist';

  @override
  String get video => 'Video';

  @override
  String get resolution => 'Resolution';

  @override
  String get videoParameters => 'Video parameters';

  @override
  String get videoTracks => 'Video tracks';

  @override
  String get videoBitrate => 'Video bitrate';

  @override
  String get audio => 'Audio';

  @override
  String get audioParameters => 'Audio parameters';

  @override
  String get audioTracks => 'Audio tracks';

  @override
  String get audioBitrate => 'Audio bitrate';

  @override
  String get noData => 'No data';

  @override
  String get noRuntimeLogs => 'No runtime logs';

  @override
  String get loadCommentsFailed => 'Failed to load comments';

  @override
  String get retry => 'Retry';

  @override
  String get episodeTitle => 'Episode title';

  @override
  String get switchManually => 'Switch manually';

  @override
  String get descending => 'Descending';

  @override
  String get ascending => 'Ascending';

  @override
  String get loadingEpisodeList => 'Loading episode list';

  @override
  String get episodeListNotFound => 'Episode list not found';

  @override
  String get episodeList => 'Episode list';

  @override
  String get pictureInPictureUnsupported =>
      'Picture-in-picture is not supported on this device';

  @override
  String get enterPictureInPictureFailed =>
      'Failed to enter picture-in-picture';

  @override
  String get alreadyLatestEpisode => 'This is already the latest episode';

  @override
  String get alreadyFirstEpisode => 'This is already the first episode';

  @override
  String loadingEpisode(String episode) {
    return 'Loading $episode';
  }

  @override
  String get desktopScreenshotUnsupported =>
      'Saving screenshots is not supported on desktop yet';

  @override
  String get screenshotNoImage => 'Screenshot failed: no image was captured';

  @override
  String screenshotSaveFailed(String error) {
    return 'Failed to save screenshot: $error';
  }

  @override
  String screenshotFailed(String error) {
    return 'Screenshot failed: $error';
  }

  @override
  String get compatibilityNotice => 'Compatibility notice';

  @override
  String get mediaCodecSuperResolutionUnsupported =>
      'The MediaCodec renderer does not support super resolution.\n\nTo use super resolution, switch the video renderer to gpu or gpu-next in Playback settings.';

  @override
  String get performanceNotice => 'Performance notice';

  @override
  String get superResolutionPerformanceWarning =>
      'Super resolution (Quality) may cause stuttering. Continue?';

  @override
  String get maximumSpeedReached => 'Maximum playback speed reached';

  @override
  String get minimumSpeedReached => 'Minimum playback speed reached';

  @override
  String get searchingDanmaku => 'Searching for danmaku';

  @override
  String danmakuSearchError(String error) {
    return 'Danmaku search error: $error';
  }

  @override
  String get noMatchingResults => 'No matching results';

  @override
  String get tooManyDanmakuResultsHint =>
      'There are many results, so only some are shown. Enter a more complete anime title to narrow the search.';

  @override
  String get danmakuSwitchSucceeded => 'Danmaku switched successfully';

  @override
  String get noDanmakuContent => 'No danmaku found';

  @override
  String get danmakuSwitchFailed => 'Failed to switch danmaku';

  @override
  String get danmakuSearch => 'Danmaku search';

  @override
  String get animeName => 'Anime title';

  @override
  String get submit => 'Submit';

  @override
  String get danmakuInputHint => 'Send a friendly danmaku to mark the moment';

  @override
  String get danmakuDisabled => 'Danmaku is off';

  @override
  String get send => 'Send';

  @override
  String get playbackSpeed => 'Playback speed';

  @override
  String get defaultSpeed => 'Default speed';

  @override
  String get skipSeconds => 'Skip duration';

  @override
  String get danmakuLoading => 'Loading danmaku…';

  @override
  String get closeDanmaku => 'Turn off danmaku';

  @override
  String get openDanmaku => 'Turn on danmaku';

  @override
  String skipButtonHint(int seconds) {
    return 'Skip forward $seconds seconds; hold to change the duration';
  }

  @override
  String get pause => 'Pause';

  @override
  String get play => 'Play';

  @override
  String get nextEpisode => 'Next episode';

  @override
  String get playbackSpeedShort => 'Speed';

  @override
  String get videoAspectRatio => 'Aspect ratio';

  @override
  String get episodePanel => 'Episodes';

  @override
  String get back => 'Back';

  @override
  String get pictureInPicture => 'Picture-in-picture';

  @override
  String get moreOptions => 'More options';

  @override
  String get switchDanmaku => 'Switch danmaku';

  @override
  String get externalPlayback => 'External playback';

  @override
  String get doNotEnable => 'Off';

  @override
  String minutesCount(int minutes) {
    return '$minutes minutes';
  }

  @override
  String get custom => 'Custom';

  @override
  String timedShutdownRemaining(String remaining) {
    return 'Sleep timer ($remaining)';
  }

  @override
  String get watchTogether => 'Watch together';

  @override
  String get unlockPanel => 'Unlock controls';

  @override
  String get lockPanel => 'Lock controls';

  @override
  String get watchTogetherDescription =>
      'Synchronize playback, pause, and episode selection with friends';

  @override
  String get cancelConnection => 'Cancel connection';

  @override
  String get disconnect => 'Disconnect';

  @override
  String get connecting => 'Connecting';

  @override
  String get createRoom => 'Create room';

  @override
  String get createRoomDescription =>
      'Generate a room number and invite friends';

  @override
  String get joinRoom => 'Join room';

  @override
  String get joinRoomDescription => 'Use a friend\'s room number';

  @override
  String get syncServer => 'Sync server';

  @override
  String get currentRoom => 'Current room';

  @override
  String get networkLatency => 'Network latency';

  @override
  String get shareRoomHint => 'Share the room number so friends can join';

  @override
  String get shareRoomNumberWithFriends => 'Share the room number with friends';

  @override
  String get enterFriendsRoomNumber => 'Enter your friend\'s room number';

  @override
  String get createAndJoin => 'Create and join';

  @override
  String get roomNumber => 'Room number';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get roomNumberHint => '6–10 digits';

  @override
  String get enterRoomNumber => 'Enter a room number';

  @override
  String get invalidRoomNumber => 'The room number must contain 6–10 digits';

  @override
  String get nickname => 'Nickname';

  @override
  String get nicknameHint => '4–12 English letters, visible in the room';

  @override
  String get enterNickname => 'Enter a nickname';

  @override
  String get invalidNickname =>
      'The nickname must contain 4–12 English letters';

  @override
  String get customServer => 'Custom server';

  @override
  String get serverAddressFormatHint => 'Address format: host:port';

  @override
  String get sameServerRequired => 'Room members must use the same server';

  @override
  String get save => 'Save';

  @override
  String get serverAddress => 'Server address';

  @override
  String get copied => 'Copied';

  @override
  String get copy => 'Copy';

  @override
  String get downloadManagement => 'Downloads';

  @override
  String get noDownloads => 'No downloads';

  @override
  String get resumingDownloads => 'Resuming downloads';

  @override
  String downloadCompletedSize(String size) {
    return 'Completed · $size';
  }

  @override
  String downloadSegmentProgress(int completed, int total, String speed) {
    return '$completed/$total segments$speed';
  }

  @override
  String get downloadFailed => 'Download failed';

  @override
  String downloadPausedPercent(String percent) {
    return 'Paused · $percent%';
  }

  @override
  String get queued => 'Queued';

  @override
  String get parsingVideoSource => 'Parsing video source';

  @override
  String get resume => 'Resume';

  @override
  String get downloadPrioritized => 'Download moved to the front of the queue';

  @override
  String get prioritizeDownload => 'Prioritize download';

  @override
  String get localFileMissing => 'Local file not found';

  @override
  String get deleteDownload => 'Delete download';

  @override
  String deleteEpisodeDownloadConfirmation(String episode) {
    return 'Delete the downloaded files for \"$episode\"?';
  }

  @override
  String get deleteAllDownloads => 'Delete all downloads';

  @override
  String deleteAllAnimeDownloadsConfirmation(String anime) {
    return 'Delete all downloaded files for \"$anime\"?';
  }

  @override
  String get selectEpisodesToDownload => 'Select episodes to download';

  @override
  String downloadEpisodeCountWithAdded(int total, int added) {
    return '$total episodes · $added already added';
  }

  @override
  String totalEpisodeCount(int count) {
    return '$count episodes';
  }

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get selectAll => 'Select all';

  @override
  String get startDownload => 'Start download';

  @override
  String downloadSelectedEpisodes(int count) {
    return 'Download $count episodes';
  }

  @override
  String episodesAddedToDownloadQueue(int count) {
    return 'Added $count episodes to the download queue. View them in Downloads.';
  }

  @override
  String completedDownloadCount(int completed, int total) {
    return '$completed/$total completed';
  }

  @override
  String activeDownloadCountSuffix(int count) {
    return ' · $count active';
  }

  @override
  String get moreActions => 'More actions';

  @override
  String get startAll => 'Start all';

  @override
  String get deleteAll => 'Delete all';

  @override
  String pluginNotFound(String name) {
    return 'Plugin $name not found';
  }

  @override
  String get parseVideoSourceTimedOut =>
      'Timed out while parsing the video source';

  @override
  String get cached => 'Cached';

  @override
  String get online => 'Online';

  @override
  String get editMode => 'Edit mode';

  @override
  String get animeDetails => 'Anime details';

  @override
  String get deleteRecord => 'Delete record';

  @override
  String get myComment => 'My comment';

  @override
  String get commentDeleted => 'This comment has been deleted';

  @override
  String get ratingBreakdown => 'Rating breakdown';

  @override
  String ratingVotePercentage(String percentage, int count) {
    return '$percentage% ($count people)';
  }

  @override
  String get broadcastStart => 'Broadcast start';

  @override
  String peopleRated(int count) {
    return '$count ratings:';
  }

  @override
  String get hiddenPeopleRated => '*** ratings:';

  @override
  String get initializationFailed => 'Initialization failed';

  @override
  String get invalidImagePreviewParameters =>
      'Invalid image preview parameters. Go back and try again.';

  @override
  String get returnHome => 'Return home';

  @override
  String get notificationPermissionRequired =>
      'Notification permission required';

  @override
  String get notificationPermissionDescription =>
      'Notification permission shows download progress in the background and helps prevent the system from stopping download tasks.\n\nDownloads still work if permission is denied, but the system may interrupt them in the background.';

  @override
  String get notNow => 'Not now';

  @override
  String get allow => 'Allow';

  @override
  String bangumiInitializationFailed(String error) {
    return 'Failed to initialize Bangumi. Bangumi sync was disabled: $error';
  }

  @override
  String get x11EnvironmentDetected => 'X11 environment detected';

  @override
  String get x11EnvironmentWarning =>
      'Kazumi may have performance or display issues under X11. Switching to Wayland is recommended. Continue using Kazumi under X11?';

  @override
  String get continueAction => 'Continue';

  @override
  String get createDesktopShortcut => 'Create desktop shortcut';

  @override
  String get createDesktopShortcutConfirmation =>
      'Create a Kazumi shortcut on the desktop?';

  @override
  String get doNotCreateNow => 'Not now';

  @override
  String get create => 'Create';

  @override
  String get desktopShortcutCreated => 'Desktop shortcut created';

  @override
  String get desktopShortcutCreationFailed =>
      'Failed to create desktop shortcut';

  @override
  String ruleUpdatesAvailable(int count) {
    return '$count rule updates are available';
  }

  @override
  String get webDavEditor => 'WebDAV editor';

  @override
  String configurationFailed(String error) {
    return 'Configuration failed: $error';
  }

  @override
  String get configurationSucceededTesting =>
      'Configuration saved. Starting test.';

  @override
  String testFailedWithError(String error) {
    return 'Test failed: $error';
  }

  @override
  String get syncingWatchHistory => 'Syncing watch history';

  @override
  String get watchHistorySyncCompleted => 'Watch history sync completed';

  @override
  String watchHistorySyncFailed(String error) {
    return 'Watch history sync failed: $error';
  }

  @override
  String get ruleRepository => 'Rule repository';

  @override
  String get ruleRepositoryMirrorSettingDescription =>
      'Use a mirror for rule updates and repository management';

  @override
  String get bangumiMirrorSettingDescription =>
      'Load rankings through the cache backend';

  @override
  String get configureBangumiTokenFirst =>
      'Configure a Bangumi Access Token first';

  @override
  String get bangumiInitializationRetryLater =>
      'Failed to initialize Bangumi. Try again later.';

  @override
  String get bangumiSync => 'Bangumi sync';

  @override
  String get bangumiSyncDescription =>
      'Automatically sync collection status with Bangumi';

  @override
  String get bangumiConfiguration => 'Bangumi configuration';

  @override
  String webDavInitializationFailed(String error) {
    return 'Failed to initialize WebDAV: $error';
  }

  @override
  String get webDavSync => 'WebDAV sync';

  @override
  String get enableWebDavSyncFirst => 'Enable WebDAV sync first';

  @override
  String get watchHistorySync => 'Watch history sync';

  @override
  String get watchHistorySyncDescription =>
      'Allow watch history to sync automatically';

  @override
  String get collectionSync => 'Collection sync';

  @override
  String get collectionSyncDescription =>
      'Allow WebDAV to participate in collection status sync';

  @override
  String get webDavConfiguration => 'WebDAV configuration';

  @override
  String get syncWatchHistoryNow => 'Sync watch history now';

  @override
  String get mergeWatchHistoryWithWebDav =>
      'Merge watch history with WebDAV in both directions';

  @override
  String get enableBangumiSyncFirst => 'Enable Bangumi sync first';

  @override
  String get syncOptions => 'Sync options';

  @override
  String get immediateSyncPrompt => 'Immediate sync prompt';

  @override
  String get immediateSyncPromptDescription =>
      'Show a prompt when the collection button triggers immediate sync';

  @override
  String get syncPriority => 'Sync priority';

  @override
  String get syncPriorityDescription =>
      'Choose which status wins when local and Bangumi differ';

  @override
  String get syncStatusNow => 'Sync status now';

  @override
  String get syncStatusNowDescription =>
      'Sync mismatched entries and entries found only locally or remotely';

  @override
  String get cannotOpenLink => 'Could not open link';

  @override
  String get generateBangumiAccessTokenHint =>
      'Tap here to generate a Bangumi Access Token';

  @override
  String get accessTokenRequired => 'Access Token cannot be empty';

  @override
  String get bangumiTokenEmpty => 'Bangumi Token is empty';

  @override
  String get testingBangumiToken => 'Testing Bangumi Token…';

  @override
  String validationFailed(String error) {
    return 'Validation failed: $error';
  }

  @override
  String bangumiTestSucceeded(String username) {
    return 'Test succeeded. Username: $username';
  }

  @override
  String get preparingBangumiStatusSync => 'Preparing Bangumi status sync…';

  @override
  String get exitKazumi => 'Exit Kazumi';

  @override
  String get askEveryTime => 'Ask every time';

  @override
  String get cacheManagement => 'Cache management';

  @override
  String get clearCoverCacheConfirmation =>
      'Cached anime covers will need to be downloaded again. Clear the cache?';

  @override
  String get openSource => 'Open source';

  @override
  String get openSourceLicenses => 'Open-source licenses';

  @override
  String get viewOpenSourceLicenses => 'View all open-source licenses';

  @override
  String get externalLinks => 'External links';

  @override
  String get projectHomepage => 'Project homepage';

  @override
  String get sourceRepository => 'Source repository';

  @override
  String get iconDesign => 'Icon design';

  @override
  String get animeIndex => 'Anime index';

  @override
  String get danDanPlayOpenPlatform => 'DanDanPlay Open Platform';

  @override
  String get community => 'Community';

  @override
  String get tapToJoin => 'Tap to join';

  @override
  String get whenClosing => 'When closing';

  @override
  String get storageAndLogs => 'Storage and logs';

  @override
  String get errorLogs => 'Error logs';

  @override
  String get clearCache => 'Clear cache';

  @override
  String get calculating => 'Calculating…';

  @override
  String get appUpdates => 'App updates';

  @override
  String get checkAppUpdatesOnStartup => 'Check for app updates on startup';

  @override
  String get checkAppUpdates => 'Check for app updates';

  @override
  String currentVersion(String version) {
    return 'Current version $version';
  }

  @override
  String get ruleUpdates => 'Rule updates';

  @override
  String get checkRuleUpdatesOnStartup => 'Check for rule updates on startup';

  @override
  String get notCollected => 'Not collected';

  @override
  String get watching => 'Watching';

  @override
  String get planToWatch => 'Plan to watch';

  @override
  String get onHold => 'On hold';

  @override
  String get watched => 'Watched';

  @override
  String get abandoned => 'Abandoned';

  @override
  String get notFollowing => 'Not following';

  @override
  String get localFirst => 'Local first';

  @override
  String get bangumiFirst => 'Bangumi first';

  @override
  String get invalidPlaybackParameters =>
      'Invalid playback parameters. Go back and try again.';

  @override
  String get danmakuSendingUnsupported =>
      'This episode does not support sending danmaku';

  @override
  String get danmakuEmpty => 'Danmaku cannot be empty';

  @override
  String get danmakuTooLong => 'Danmaku is too long';

  @override
  String get joinWatchTogetherBeforeChatDanmaku =>
      'Join Watch together before sending chat-room danmaku';

  @override
  String get me => 'Me';

  @override
  String get sendDanmakuTo => 'Send danmaku to';

  @override
  String get chooseDanmakuDestination => 'Choose where to send this danmaku';

  @override
  String get sendDestination => 'Destination';

  @override
  String get sendToChatRoom => 'Send to chat room';

  @override
  String get visibleToWatchTogetherMembers =>
      'Visible to everyone watching together';

  @override
  String get sendToRemoteDanmaku => 'Send to remote danmaku library';

  @override
  String get sendAsVideoDanmaku => 'Send as video danmaku';

  @override
  String get parsingVideoResource => 'Parsing video resource';

  @override
  String get videoResourceParsedLoadingPlayer =>
      'Video resource parsed. Loading player.';

  @override
  String get anthology => 'Anthology';

  @override
  String playbackRoadNumber(int number) {
    return 'Source $number';
  }

  @override
  String get episodes => 'Episodes';

  @override
  String get comments => 'Comments';

  @override
  String get waitForVideoToLoad => 'Wait for the video to finish loading';

  @override
  String get openDanmakuFirst => 'Turn on danmaku first';

  @override
  String get tapToSendDanmaku => 'Tap to send danmaku';

  @override
  String get verificationSucceeded => 'Verification succeeded';

  @override
  String get searchWillRestart => 'Search will restart shortly';

  @override
  String get noAliasesTryManualSearch =>
      'No aliases available. Try a manual search.';

  @override
  String resultCount(int count) {
    return '$count results';
  }

  @override
  String get searchFailed => 'Search failed';

  @override
  String get verificationRequired => 'Verification required';

  @override
  String get noResults => 'No results';

  @override
  String moreActionsFor(String name) {
    return 'More actions for $name';
  }

  @override
  String get aliasSearch => 'Alias search';

  @override
  String get manualSearch => 'Manual search';

  @override
  String get openInBrowser => 'Open in browser';

  @override
  String get sourceRequiresVerification =>
      'This source requires verification first';

  @override
  String get verify => 'Verify';

  @override
  String get sourceReturnedNoResults => 'This source returned no results';

  @override
  String get tryAnotherKeyword => 'Try another keyword';

  @override
  String searchingKeywordProgress(String keyword, int done, int total) {
    return '\"$keyword\" · Searching $done/$total';
  }

  @override
  String keywordResultCount(String keyword, int count) {
    return '\"$keyword\" · $count results';
  }

  @override
  String get selectPlaybackSource => 'Select playback source';

  @override
  String get enterAlias => 'Enter alias';

  @override
  String get deleteConfirmation => 'Confirm deletion';

  @override
  String get deleteAliasConfirmation =>
      'This cannot be undone. Permanently delete this alias?';

  @override
  String executingVerificationScript(String name) {
    return '$name is running a verification script. Please wait.';
  }

  @override
  String get verificationScriptRunningDescription =>
      'The verification page is loaded and the custom script is running. Waiting for verification…';

  @override
  String automaticVerificationInProgress(String name) {
    return '$name is completing verification automatically. Please wait.';
  }

  @override
  String get automaticVerificationDescription =>
      'The verification button was detected and clicked. Waiting for verification…';

  @override
  String get enterCaptcha => 'Enter the captcha';

  @override
  String get captchaVerification => 'Captcha verification';

  @override
  String pluginRequiresCaptcha(String name) {
    return '$name requires captcha verification';
  }

  @override
  String get loadingCaptchaImage => 'Loading captcha image…';

  @override
  String get imageDecodeFailed => 'Failed to decode image';

  @override
  String get automaticVerification => 'Automatic verification';

  @override
  String get invalidAnimeDetailsParameters =>
      'Invalid anime details parameters. Go back and open the item again.';

  @override
  String get overview => 'Overview';

  @override
  String get characters => 'Characters';

  @override
  String get related => 'Related';

  @override
  String get staff => 'Staff';

  @override
  String get bindBangumiBeforeCommenting =>
      'Configure Bangumi sync before posting a comment';

  @override
  String get collectBeforeReviewing =>
      'Add this anime to your collection before posting a review';

  @override
  String get postComment => 'Post comment';

  @override
  String get startWatching => 'Start watching';

  @override
  String get introduction => 'Introduction';

  @override
  String get showLess => 'Show less';

  @override
  String get showMore => 'Show more';

  @override
  String get morePlus => 'More +';

  @override
  String get loadRelatedItemsFailed =>
      'Failed to load related items. Try again.';

  @override
  String get noRelatedItems => 'No related items';

  @override
  String get loadFailedRetry => 'Failed to load. Try again.';

  @override
  String get profile => 'Profile';

  @override
  String get character => 'Character';

  @override
  String get viewCharacterImages => 'View character images';

  @override
  String get viewOriginalImage => 'View original image';

  @override
  String get noCharacterProfile => 'No character profile';

  @override
  String get notRated => 'Not rated';

  @override
  String get ratingAwful => 'Awful';

  @override
  String get ratingVeryBad => 'Very bad';

  @override
  String get ratingBad => 'Bad';

  @override
  String get ratingPoor => 'Poor';

  @override
  String get ratingAverage => 'Average';

  @override
  String get ratingOkay => 'Okay';

  @override
  String get ratingRecommended => 'Recommended';

  @override
  String get ratingHighlyRecommended => 'Highly recommended';

  @override
  String get ratingMasterpiece => 'Masterpiece';

  @override
  String get ratingLegendary => 'Legendary';

  @override
  String maxTags(int count) {
    return 'Up to $count tags';
  }

  @override
  String get enterTag => 'Enter a tag';

  @override
  String tagTooLong(int count) {
    return 'A tag cannot exceed $count characters';
  }

  @override
  String get tagAlreadyAdded => 'This tag has already been added';

  @override
  String get reviewHint => 'Share your thoughts about this anime';

  @override
  String get myRating => 'My rating';

  @override
  String get noTagsAdded => 'No tags added';

  @override
  String get editTags => 'Edit tags';

  @override
  String get customTagExample => 'For example: Healing';

  @override
  String get selectedTags => 'Selected tags';

  @override
  String get popularTags => 'Popular tags';

  @override
  String get none => 'None';

  @override
  String get text => 'Text';

  @override
  String get advancedOptions => 'Advanced options';

  @override
  String get ruleEditorPageTitle => 'Rule editor';

  @override
  String get ruleEditorTestRule => 'Test rule';

  @override
  String get ruleEditorForm => 'Form';

  @override
  String get ruleEditorNestedJson => 'Nested JSON';

  @override
  String get ruleEditorDelimitedString => 'Delimited string';

  @override
  String get ruleEditorLegacyParser => 'Simple parser';

  @override
  String get ruleEditorLegacyParserDesc =>
      'Use the simple parser instead of the modern parser';

  @override
  String get ruleEditorAdBlocker => 'Ad filtering';

  @override
  String get ruleEditorAdBlockerDesc => 'Enable HLS ad filtering';

  @override
  String get ruleEditorAntiCrawlerEnable => 'Enable anti-anti-crawler';

  @override
  String get ruleEditorAntiCrawlerEnableDesc =>
      'Show captcha verification instead of retry when search fails';

  @override
  String get ruleEditorCaptchaType => 'Verification type';

  @override
  String get ruleEditorImageCaptcha => 'Image captcha';

  @override
  String get ruleEditorAutoClick => 'Automatic click';

  @override
  String get ruleEditorCustomScript => 'Custom script';

  @override
  String get ruleEditorImageCaptchaDesc =>
      'Show a captcha image for the user to enter manually';

  @override
  String get ruleEditorAutoClickDesc =>
      'Automatically simulate a click when the verification button is detected';

  @override
  String get ruleEditorCustomScriptDesc =>
      'Run the rule\'s verification script after loading the page';

  @override
  String get ruleEditorUnknownCaptchaType => 'Unknown verification type';

  @override
  String get ruleEditorCaptchaDetectionMethod => 'Verification page detection';

  @override
  String get ruleEditorCaptchaDetectionMethodDesc =>
      'Prefer this marker when determining whether a search response is a verification page';

  @override
  String get ruleEditorRegex => 'Regular expression';

  @override
  String get ruleEditorBasicInfo => 'Basic information';

  @override
  String get ruleEditorBasicInfoDesc => 'Rule name, version, and site address';

  @override
  String get ruleEditorSearchRules => 'Search rules';

  @override
  String get ruleEditorSearchRulesDesc =>
      'Define how to search for items on the site';

  @override
  String get ruleEditorEpisodeRules => 'Episode rules';

  @override
  String get ruleEditorEpisodeRulesDesc =>
      'Define how to retrieve playback routes and episode lists';

  @override
  String get ruleEditorAdvancedOptionsDesc =>
      'Behavior, network, and anti-anti-crawler configuration';

  @override
  String get ruleEditorBehaviorSettings => 'Behavior settings';

  @override
  String get ruleEditorNetworkSettings => 'Network settings';

  @override
  String get ruleEditorAntiCrawler => 'Anti-anti-crawler';

  @override
  String get ruleEditorRuleName => 'Rule name';

  @override
  String get ruleEditorRuleVersion => 'Rule version';

  @override
  String get ruleEditorBaseUrl => 'Base address (URL)';

  @override
  String get ruleEditorSearchRuleType => 'Search rule type';

  @override
  String get ruleEditorEpisodeRuleType => 'Episode rule type';

  @override
  String get ruleEditorSearchUrl => 'Search address (URL)';

  @override
  String get ruleEditorSearchListXPath => 'Search result list (XPath)';

  @override
  String get ruleEditorItemNameXPath => 'Item name (XPath)';

  @override
  String get ruleEditorItemLinkXPath => 'Item link (XPath)';

  @override
  String get ruleEditorRoadListXPath => 'Playback route list (XPath)';

  @override
  String get ruleEditorEpisodeListXPath => 'Episode list (XPath)';

  @override
  String get ruleEditorSearchMethod => 'Search request method';

  @override
  String get ruleEditorSearchRequestUrl => 'Search request address (URL)';

  @override
  String get ruleEditorSearchHeaders => 'Search request headers (JSON)';

  @override
  String get ruleEditorSearchQuery => 'Search query parameters (JSON)';

  @override
  String get ruleEditorSearchBodyType => 'Search request body type';

  @override
  String get ruleEditorSearchBody => 'Search request body (JSON)';

  @override
  String get ruleEditorSearchListPath => 'Search result list path (JSONPath)';

  @override
  String get ruleEditorItemNamePath =>
      'Item name path (JSONPath, relative to item)';

  @override
  String get ruleEditorItemSourcePath =>
      'Item source path (JSONPath, relative to item)';

  @override
  String get ruleEditorEpisodeMethod => 'Episode request method';

  @override
  String get ruleEditorEpisodeRequestUrl => 'Episode request address (URL)';

  @override
  String get ruleEditorEpisodeHeaders => 'Episode request headers (JSON)';

  @override
  String get ruleEditorEpisodeQuery => 'Episode query parameters (JSON)';

  @override
  String get ruleEditorEpisodeBodyType => 'Episode request body type';

  @override
  String get ruleEditorEpisodeBody => 'Episode request body (JSON)';

  @override
  String get ruleEditorEpisodeResponseFormat => 'Episode response format';

  @override
  String get ruleEditorRoadListPath =>
      'Playback route list path (JSONPath; leave blank for one route)';

  @override
  String get ruleEditorRoadNamePath =>
      'Route name path (JSONPath, relative to route)';

  @override
  String get ruleEditorEpisodeListPath =>
      'Episode list path (JSONPath, relative to route)';

  @override
  String get ruleEditorEpisodeNamePath =>
      'Episode name path (JSONPath, relative to episode)';

  @override
  String get ruleEditorPlaybackEntryPath =>
      'Playback entry address path (JSONPath; optional when using a playback page template)';

  @override
  String get ruleEditorPlaybackEntryPathHelper =>
      'Read the address passed to WebView from the episode object. It may be a playback page or a direct media URL.';

  @override
  String get ruleEditorRoadNamesPath => 'Route names string path (JSONPath)';

  @override
  String get ruleEditorRoadEpisodesPath =>
      'Route episodes string path (JSONPath)';

  @override
  String get ruleEditorRoadSeparator => 'Route separator';

  @override
  String get ruleEditorEpisodeSeparator => 'Episode separator';

  @override
  String get ruleEditorFieldSeparator => 'Name and address separator';

  @override
  String get ruleEditorResponseVariables =>
      'Response variables (JSON: variable name → JSONPath)';

  @override
  String get ruleEditorPlayPageUrl =>
      'Playback page address template (URL, optional)';

  @override
  String get ruleEditorPlayPageUrlHelper =>
      'Available variables: @source, @episodeUrl, @roadIndex/@episodeIndex (from 0), @roadNumber/@episodeNumber (from 1), and response variables.';

  @override
  String get ruleEditorPlayPageQuery => 'Playback page query parameters (JSON)';

  @override
  String get ruleEditorPlayPageQueryHelper =>
      'Uses the same variables as the address template and merges them into the final URL query parameters.';

  @override
  String get ruleEditorUserAgent => 'User agent (User-Agent)';

  @override
  String get ruleEditorPlayerDownloaderOnly =>
      'Used only by the player and downloader.';

  @override
  String get ruleEditorReferer => 'Playback request origin (Referer)';

  @override
  String get ruleEditorCaptchaDetectionValue =>
      'Verification page detection value';

  @override
  String get ruleEditorCaptchaDetectionValueHelper =>
      'When blank, use the XPath of the captcha image or verification button for detection.';

  @override
  String get ruleEditorCaptchaImageXPath => 'Captcha image (XPath)';

  @override
  String get ruleEditorCaptchaImageXPathHelper =>
      'Enter the XPath of the captcha image element.';

  @override
  String get ruleEditorCaptchaInputXPath => 'Captcha input (XPath)';

  @override
  String get ruleEditorCaptchaInputXPathHelper =>
      'Enter the XPath of the captcha input element.';

  @override
  String get ruleEditorCaptchaSubmitXPath => 'Captcha submit button (XPath)';

  @override
  String get ruleEditorCaptchaSubmitXPathHelper =>
      'Enter the XPath of the captcha submit button element.';

  @override
  String get ruleEditorVerifyButtonXPath => 'Verification button (XPath)';

  @override
  String get ruleEditorVerifyButtonXPathHelper =>
      'Enter the XPath of the verification button element; it will be clicked automatically when detected.';

  @override
  String get ruleEditorCaptchaScript => 'Verification script (JavaScript)';

  @override
  String get ruleEditorCaptchaScriptHelper =>
      'KazumiCaptcha.log, clicked, done, and fail are available.';

  @override
  String get install => 'Install';

  @override
  String get installed => 'Installed';

  @override
  String get refresh => 'Refresh';

  @override
  String get refreshRuleList => 'Refresh rule list';

  @override
  String get sortByName => 'Sort by name';

  @override
  String get sortByUpdateTime => 'Sort by update time';

  @override
  String get ruleRepositoryAccessFailed =>
      'Unable to access the rule repository';

  @override
  String get ruleRepositoryAccessFailedPlayful =>
      'Oops (⊙.⊙), unable to access the rule repository';

  @override
  String get ruleRepositoryMirrorEnabled => 'Rule repository mirror is enabled';

  @override
  String get ruleRepositoryMirrorDisabled =>
      'Rule repository mirror is disabled';

  @override
  String get enableRuleRepositoryMirror => 'Enable rule repository mirror';

  @override
  String get disableRuleRepositoryMirror => 'Disable rule repository mirror';

  @override
  String get ruleRepositoryEmpty => 'No rules in the rule repository';

  @override
  String lastUpdated(String time) {
    return 'Last updated: $time';
  }

  @override
  String get invalidRuleTestParameters =>
      'Invalid rule test parameters. Go back and try again.';

  @override
  String get invalidRuleEditorParameters =>
      'Invalid rule editor parameters. Go back and try again.';

  @override
  String get newVersionAvailable => 'A new version is available';

  @override
  String get alreadyLatestVersion => 'You already have the latest version!';

  @override
  String get checkUpdatesFailed => 'Failed to check for updates';

  @override
  String newVersion(String version) {
    return 'New version $version';
  }

  @override
  String releaseDate(String date) {
    return 'Released: $date';
  }

  @override
  String get selectInstallationType => 'Select installation type:';

  @override
  String get autoUpdateDisabled => 'Automatic updates disabled';

  @override
  String get disableAutoUpdate => 'Disable automatic updates';

  @override
  String get remindMeLater => 'Remind me later';

  @override
  String get viewDetails => 'View details';

  @override
  String get updateNow => 'Update now';

  @override
  String get windowsMsixPackage => 'Windows MSIX package';

  @override
  String get windowsPortableZip => 'Windows portable version (ZIP)';

  @override
  String get linuxDebPackage => 'Linux DEB package';

  @override
  String get linuxTarPackage => 'Linux TAR package';

  @override
  String get macosDmgImage => 'macOS DMG image';

  @override
  String get unknownInstallationType => 'Unknown installation type';

  @override
  String noDownloadLinkForType(String type) {
    return 'No download link found for $type';
  }

  @override
  String downloadFailedWithError(String error) {
    return 'Download failed: $error';
  }

  @override
  String get noSuitableDownloadLink => 'No suitable download link found';

  @override
  String get downloadingUpdate => 'Downloading update';

  @override
  String get insufficientPermissionTemporaryDirectory =>
      'Insufficient permission; the file was saved to the app\'s temporary directory';

  @override
  String get insufficientDiskSpace => 'Insufficient disk space';

  @override
  String get networkConnectionError => 'Network connection error';

  @override
  String get fileIntegrityVerificationFailed =>
      'File integrity verification failed, possibly due to a network transfer error';

  @override
  String errorDetails(String error) {
    return 'Error details: $error';
  }

  @override
  String get downloadComplete => 'Download complete';

  @override
  String newVersionDownloaded(String version) {
    return 'Version $version has been downloaded';
  }

  @override
  String get appWillExitDuringInstallation =>
      'The app will exit during installation';

  @override
  String get fileLocation => 'File location:';

  @override
  String get installLater => 'Install later';

  @override
  String get openFolder => 'Open folder';

  @override
  String get installNow => 'Install now';

  @override
  String get preparingInstallAppWillExit =>
      'Preparing to install the update. The app will exit shortly…';

  @override
  String cannotOpenInstaller(String error) {
    return 'Unable to open the installer: $error';
  }

  @override
  String launchInstallerFailed(String error) {
    return 'Failed to launch the installer: $error';
  }

  @override
  String get fileOrDirectoryNotFound => 'File or directory not found';

  @override
  String get fileManagerMethodUnsupported =>
      'This platform does not support opening the file manager this way';

  @override
  String get cannotOpenFileManager => 'Unable to open the file manager';

  @override
  String yearsAgo(int count) {
    return '$count years ago';
  }

  @override
  String monthsAgo(int count) {
    return '$count months ago';
  }

  @override
  String daysAgo(int count) {
    return '$count days ago';
  }

  @override
  String hoursAgo(int count) {
    return '$count hours ago';
  }

  @override
  String minutesAgo(int count) {
    return '$count minutes ago';
  }

  @override
  String get justNow => 'Just now';

  @override
  String get today => 'Today';

  @override
  String get datePatternMonthDayTime => 'MM-DD hh:mm';

  @override
  String get datePatternYearMonthDayTime => 'YY-MM-DD hh:mm';

  @override
  String seasonAnime(int year, String season) {
    return '$year $season anime';
  }

  @override
  String get imageSearchFailedRetry => 'Image search failed. Try again later.';

  @override
  String get imageSearchUrlFailedRetry =>
      'Image search failed. Check the image address or try again later.';

  @override
  String get loadingPlayful => 'Loading ٩(◦`꒳´◦)۶';

  @override
  String get animeTagDaily => 'Slice of life';

  @override
  String get animeTagOriginal => 'Original';

  @override
  String get animeTagSchool => 'School';

  @override
  String get animeTagComedy => 'Comedy';

  @override
  String get animeTagFantasy => 'Fantasy';

  @override
  String get animeTagYuri => 'Yuri';

  @override
  String get animeTagRomance => 'Romance';

  @override
  String get animeTagMystery => 'Mystery';

  @override
  String get animeTagHotBlooded => 'Hot-blooded';

  @override
  String get animeTagHarem => 'Harem';

  @override
  String get animeTagMecha => 'Mecha';

  @override
  String get animeTagLightNovel => 'Light novel';

  @override
  String get animeTagIdol => 'Idol';

  @override
  String get animeTagHealing => 'Healing';

  @override
  String get animeTagIsekai => 'Isekai';

  @override
  String get ruleEditorCaptchaDetectionTextHint => 'Authentication';

  @override
  String get ruleEditorCaptchaDetectionRegexHint =>
      'Authentication|smart_verify';

  @override
  String get ruleEditorSearchUrlRequired =>
      'Search request address is required';

  @override
  String get ruleEditorEpisodeUrlRequired =>
      'Episode request address is required';

  @override
  String mustBeJsonObject(String label) {
    return '$label must be a JSON object';
  }

  @override
  String invalidJsonWithError(String label, String error) {
    return '$label is not valid JSON: $error';
  }

  @override
  String formBodyMustBeJsonObject(String label) {
    return '$label must be a JSON object in form mode';
  }

  @override
  String jsonPathMustStartWithDollar(String expression) {
    return 'JSONPath must start with \$: $expression';
  }

  @override
  String unsupportedJsonPath(String expression) {
    return 'Unsupported JSONPath: $expression';
  }

  @override
  String unsupportedJsonPathSegment(String segment) {
    return 'Unsupported JSONPath segment: [$segment]';
  }

  @override
  String jsonPathMissingBracket(String expression) {
    return 'JSONPath is missing ]: $expression';
  }

  @override
  String jsonPathParseFailed(String expression, String error) {
    return 'Failed to parse JSONPath $expression: $error';
  }

  @override
  String apiResponseInvalidJson(String error) {
    return 'API response is not valid JSON: $error';
  }

  @override
  String onlyGetPostSupported(String method) {
    return 'Only GET/POST is supported; current method: $method';
  }

  @override
  String get apiRequestUrlRequired => 'API request URL is required';

  @override
  String apiRequestUrlInvalid(String url) {
    return 'Invalid API request URL: $url';
  }

  @override
  String searchNodeMissingNameOrSource(int index) {
    return 'Search node $index has no name or source and was skipped';
  }

  @override
  String searchNodeParseFailed(int index, String error) {
    return 'Failed to parse search node $index: $error';
  }

  @override
  String chapterVariableNoMatch(String name, String path) {
    return 'Chapter response variable $name did not match a value: $path';
  }

  @override
  String episodeNodeMissingUrl(int road, int episode) {
    return 'Episode node $episode on route $road has no URL and was skipped';
  }

  @override
  String episodeNodeParseFailed(int road, int episode, String error) {
    return 'Failed to parse episode node $episode on route $road: $error';
  }

  @override
  String roadNodeNoValidEpisodes(int road) {
    return 'Route node $road has no valid episodes and was skipped';
  }

  @override
  String roadNodeParseFailed(int road, String error) {
    return 'Failed to parse route node $road: $error';
  }

  @override
  String episodeEntryMissingSeparator(int road, int episode) {
    return 'Episode entry $episode on route $road has no field separator and was skipped';
  }

  @override
  String episodeEntryMissingUrl(int road, int episode) {
    return 'Episode entry $episode on route $road has no URL and was skipped';
  }

  @override
  String episodeEntryParseFailed(int road, int episode, String error) {
    return 'Failed to parse episode entry $episode on route $road: $error';
  }

  @override
  String roadNoValidEpisodes(int road) {
    return 'Route $road has no valid episodes and was skipped';
  }

  @override
  String playbackRouteNumber(int number) {
    return 'Playback route $number';
  }

  @override
  String get playPageTemplateRequired =>
      'Playback page address template is required';

  @override
  String episodePageUrlInvalid(String url) {
    return 'Invalid episode page URL: $url';
  }

  @override
  String get chapterSeparatorsRequired => 'Chapter separators are required';

  @override
  String get playbackEntryOrTemplateRequired =>
      'Configure a playback entry address path or playback page address template';

  @override
  String missingTemplateVariable(String name) {
    return 'Missing template variable @$name';
  }

  @override
  String searchUrlInvalid(String url) {
    return 'Invalid search URL: $url';
  }

  @override
  String chapterUrlInvalid(String url) {
    return 'Invalid chapter URL: $url';
  }

  @override
  String get htmlResponseHasNoRoot => 'HTML response has no root element';

  @override
  String get htmlResponseParseFailed => 'Failed to parse HTML response';

  @override
  String xpathRequired(String label) {
    return '$label XPath is required';
  }

  @override
  String xpathInvalid(String label, String expression) {
    return 'Invalid $label XPath: $expression';
  }

  @override
  String get importContentEmpty => 'Import content is empty';

  @override
  String get noValidRuleImportContent =>
      'No valid JSON or kazumi:// rule link was found';

  @override
  String importEntryError(int index, String error) {
    return 'Entry $index: $error';
  }

  @override
  String get ruleLinkMustBeJsonObject =>
      'Rule link content must be a JSON object';

  @override
  String get ruleMustBeJsonOrLink =>
      'A rule must be a JSON object or kazumi:// link';

  @override
  String get ruleNameRequired => 'Rule name is required';

  @override
  String get unknown => 'Unknown';

  @override
  String get bangumiTokenUnauthorized =>
      'Bangumi token is unauthorized. Check your token.';

  @override
  String fetchingCollection(String type) {
    return 'Fetching $type collection';
  }
}
