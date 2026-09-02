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
}
