// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Kazumi Max';

  @override
  String get appearanceSettings => '外观设置';

  @override
  String get settings => '设置';

  @override
  String get settingsGroupPlayback => '播放';

  @override
  String get settingsGroupResources => '资源';

  @override
  String get settingsGroupApplication => '应用';

  @override
  String get settingsGroupOther => '其他';

  @override
  String get playerSettings => '播放设置';

  @override
  String get playerSettingsDescription => '解码、渲染与播放行为';

  @override
  String get danmakuSettings => '弹幕设置';

  @override
  String get danmakuSettingsDescription => '弹幕来源与显示效果';

  @override
  String get controlSettings => '操作设置';

  @override
  String get controlSettingsDescription => '播放器按键映射';

  @override
  String get pluginManagement => '规则管理';

  @override
  String get pluginManagementDescription => '番剧资源规则';

  @override
  String get downloadSettings => '下载设置';

  @override
  String get downloadSettingsDescription => '并发数与弹幕缓存';

  @override
  String get appearanceSettingsDescription => '主题、配色与字体';

  @override
  String get interfaceSettings => '界面设置';

  @override
  String get interfaceSettingsDescription => '启动页与展示信息';

  @override
  String get syncSettings => '同步设置';

  @override
  String get syncSettingsDescription => 'WebDAV 与 Bangumi 同步';

  @override
  String get proxySettings => '代理设置';

  @override
  String get proxySettingsDescription => 'HTTP 代理服务器';

  @override
  String get about => '关于';

  @override
  String get aboutDescription => '版本、日志与开源许可';

  @override
  String get appearance => '外观';

  @override
  String get darkMode => '深色模式';

  @override
  String get followSystem => '跟随系统';

  @override
  String get light => '浅色';

  @override
  String get dark => '深色';

  @override
  String get colorScheme => '配色方案';

  @override
  String get colorDefault => '默认';

  @override
  String get colorTeal => '青色';

  @override
  String get colorBlue => '蓝色';

  @override
  String get colorIndigo => '靛蓝色';

  @override
  String get colorViolet => '紫罗兰色';

  @override
  String get colorPink => '粉红色';

  @override
  String get colorYellow => '黄色';

  @override
  String get colorOrange => '橙色';

  @override
  String get colorDeepOrange => '深橙色';

  @override
  String get dynamicColor => '动态配色';

  @override
  String get useSystemFont => '使用系统字体';

  @override
  String get useMiSansDescription => '关闭后使用 MI Sans 字体';

  @override
  String get dynamicColorDescription => '动态配色仅支持安卓 12 及以上和桌面平台';

  @override
  String get display => '显示';

  @override
  String get oledOptimization => 'OLED 优化';

  @override
  String get oledOptimizationDescription => '深色模式下使用纯黑背景';

  @override
  String get window => '窗口';

  @override
  String get useSystemTitleBar => '使用系统标题栏';

  @override
  String get restartToApply => '重启应用生效';

  @override
  String get screen => '屏幕';

  @override
  String get screenRefreshRate => '屏幕帧率';

  @override
  String get language => '语言';

  @override
  String get simplifiedChinese => '简体中文';

  @override
  String get english => 'English';

  @override
  String get exitConfirmation => '退出确认';

  @override
  String get exitQuestion => '您想要退出 Kazumi Max 吗？';

  @override
  String get doNotAskAgain => '下次不再询问';

  @override
  String get exitApp => '退出 Kazumi Max';

  @override
  String get minimizeToTray => '最小化至托盘';

  @override
  String get cancel => '取消';

  @override
  String get showWindow => '显示窗口';

  @override
  String get internalError => '内部错误';

  @override
  String get unknownPath => '未知路径';

  @override
  String storageInitializationError(String path) {
    return '存储初始化错误\n当前储存位置 $path\n尝试删除该目录以重置本地存储';
  }

  @override
  String get exitProgram => '退出程序';

  @override
  String get startup => '启动';

  @override
  String get startupPage => '启动界面设置';

  @override
  String get startupPageDescription => '设置应用开启时的默认页面';

  @override
  String get pagePopular => '推荐';

  @override
  String get pageTimeline => '时间表';

  @override
  String get pageCollection => '追番';

  @override
  String get pageMy => '我的';

  @override
  String get displayedInformation => '展示信息';

  @override
  String get showRating => '显示评分';

  @override
  String get showRatingDescription => '关闭后将在概览中隐藏评分信息';

  @override
  String get showAnimeCounter => '显示追番统计';

  @override
  String get showAnimeCounterDescription => '在追番页面的分类标签上显示数量';

  @override
  String get concurrencySettings => '并发设置';

  @override
  String get parallelEpisodes => '同时下载集数';

  @override
  String get parallelEpisodesDescription => '并行下载的剧集数量';

  @override
  String episodeCount(int count) {
    return '$count 集';
  }

  @override
  String get parallelSegments => '分片并发数';

  @override
  String get parallelSegmentsDescription => '每集同时下载的分片数量';

  @override
  String itemCount(int count) {
    return '$count 个';
  }

  @override
  String get cacheSettings => '缓存设置';

  @override
  String get downloadLocation => '下载位置';

  @override
  String get readingDefaultLocation => '正在读取默认位置...';

  @override
  String get customDownloadLocationDescription => '当前使用自定义下载位置，修改后仅对新下载生效';

  @override
  String get defaultDownloadLocationDescription => '当前使用默认下载位置，修改后仅对新下载生效';

  @override
  String get restoreDefault => '恢复默认';

  @override
  String get cacheDanmaku => '缓存弹幕';

  @override
  String get cacheDanmakuDescription => '下载视频时同时缓存弹幕数据';

  @override
  String get information => '说明';

  @override
  String get aboutConcurrency => '关于并发设置';

  @override
  String get concurrencyExplanation =>
      '• 集数并发：同时下载多少集视频\n• 分片并发：每集内同时下载多少个视频片段\n• 较高的并发可提升速度，但可能被服务器限制\n• 修改后对新开始的下载生效';

  @override
  String get directorySelectionUnsupported => '当前平台不支持手动选择目录';

  @override
  String get selectDownloadLocation => '选择下载位置';

  @override
  String get directoryAccessFailed => '无法获得该目录的持久访问权限，请更换目录';

  @override
  String get downloadLocationUpdated => '下载位置已更新，仅对新下载生效';

  @override
  String directoryWriteFailed(String message) {
    return '无法写入该目录：$message';
  }

  @override
  String downloadLocationSelectionFailed(String error) {
    return '选择下载位置失败：$error';
  }

  @override
  String get defaultDownloadLocationRestored => '已恢复默认下载位置，仅对新下载生效';

  @override
  String get shortcutGroupPlayback => '播放控制';

  @override
  String get shortcutGroupVolume => '音量';

  @override
  String get shortcutGroupVisuals => '画面与弹幕';

  @override
  String get shortcutGroupSpeed => '倍速';

  @override
  String get shortcutGroupOther => '其他';

  @override
  String get shortcutInstruction => '点按按键标签，再按下新按键完成修改';

  @override
  String shortcutConflict(String name) {
    return '按键已被【$name】占用，请重新输入';
  }

  @override
  String get shortcutsRestored => '已恢复默认快捷键';

  @override
  String get pressAnyKey => '按任意键';

  @override
  String get addKey => '添加按键';

  @override
  String get keySpace => '空格';

  @override
  String get keyEnter => '回车';

  @override
  String get keyBackspace => '退格';

  @override
  String get shortcutPlayPause => '播放 / 暂停';

  @override
  String get shortcutForward => '快进 / 长按倍速';

  @override
  String get shortcutRewind => '快退';

  @override
  String get shortcutNext => '下一集';

  @override
  String get shortcutPrevious => '上一集';

  @override
  String get shortcutVolumeUp => '音量加';

  @override
  String get shortcutVolumeDown => '音量减';

  @override
  String get shortcutMute => '静音';

  @override
  String get shortcutFullscreen => '全屏';

  @override
  String get shortcutExitFullscreen => '退出全屏';

  @override
  String get shortcutToggleDanmaku => '弹幕开关';

  @override
  String get shortcutScreenshot => '截图';

  @override
  String get shortcutSkip => '跳过';

  @override
  String shortcutSpeedPreset(int speed) {
    return '倍速：${speed}x';
  }

  @override
  String get shortcutSpeedUp => '倍速加';

  @override
  String get shortcutSpeedDown => '倍速减';

  @override
  String get proxy => '代理';

  @override
  String get enableProxy => '启用代理';

  @override
  String get enableProxyDescription => '启用后网络请求将通过代理服务器';

  @override
  String get proxyConfiguration => '代理配置';

  @override
  String get proxyConfigurationDescription => '配置代理服务器地址和认证信息';

  @override
  String get completeProxyTestFirst => '请先在代理配置中完成测试';

  @override
  String get proxyAddress => '代理地址';

  @override
  String get enterProxyAddress => '请输入代理地址';

  @override
  String get invalidProxyFormat => '格式错误，请使用 http://host:port 格式';

  @override
  String get testAddress => '测试地址';

  @override
  String get saveAndTest => '保存并测试';

  @override
  String get testSucceeded => '测试成功';

  @override
  String get proxyConnectionFailed => '代理连接失败';

  @override
  String get restoreDefaultPlayerSettings => '恢复默认播放设置';

  @override
  String get restoreDefaultPlayerSettingsConfirmation =>
      '播放设置、硬件解码器、视频渲染器和超分辨率设置将恢复为默认值。';

  @override
  String get defaultPlayerSettingsRestored => '已恢复默认播放设置';

  @override
  String get confirm => '确定';

  @override
  String get enterNumber => '请输入数字';

  @override
  String get enterPositiveNumber => '请输入大于 0 的数字';

  @override
  String seconds(num count) {
    return '$count 秒';
  }

  @override
  String get decodingAndRendering => '解码与渲染';

  @override
  String get hardwareDecoding => '硬件解码';

  @override
  String get hardwareDecoder => '硬件解码器';

  @override
  String get hardwareDecoderEnabledDescription => '仅在硬件解码启用时生效';

  @override
  String get videoRenderer => '视频渲染器';

  @override
  String get videoRendererDescription => '选择视频输出方式';

  @override
  String get lowMemoryMode => '低内存模式';

  @override
  String get lowMemoryModeMetered => '移动网络下已自动启用';

  @override
  String get lowMemoryModeDescription => '禁用高级缓存以减少内存占用';

  @override
  String get lowLatencyAudio => '低延迟音频';

  @override
  String get lowLatencyAudioDescription => '启用 OpenSLES 音频输出以降低延时';

  @override
  String get superResolution => '超分辨率';

  @override
  String get playbackBehavior => '播放行为';

  @override
  String get backgroundPlayback => '后台播放';

  @override
  String get backgroundPlaybackDescription => '应用退到后台或熄屏时继续播放音频';

  @override
  String get resumePlayback => '自动跳转';

  @override
  String get resumePlaybackDescription => '跳转到上次播放位置';

  @override
  String get autoPlayNext => '自动连播';

  @override
  String get autoPlayNextDescription => '当前视频播放完毕后自动播放下一集';

  @override
  String get autoPictureInPicture => '自动进入画中画';

  @override
  String get autoPictureInPictureDescription => '切到后台时自动进入画中画';

  @override
  String get adFiltering => '广告过滤';

  @override
  String get adFilteringDescription => '强制启用 HLS 广告过滤，忽略规则设置';

  @override
  String get disableAnimations => '禁用动画';

  @override
  String get disableAnimationsDescription => '禁用播放器内的过渡动画';

  @override
  String get swipeGestures => '滑动手势';

  @override
  String get swipeGesturesDescription => '竖向滑动调节音量和亮度';

  @override
  String get privateMode => '隐身模式';

  @override
  String get privateModeDescription => '不保留观看记录';

  @override
  String get diagnostics => '诊断';

  @override
  String get playerErrorMessages => '错误提示';

  @override
  String get playerErrorMessagesDescription => '显示播放器内部错误提示';

  @override
  String get debugMode => '调试模式';

  @override
  String get debugModeDescription => '记录播放器内部日志';

  @override
  String get logLevel => '日志等级';

  @override
  String get logLevelDescription => '播放器内部日志等级';

  @override
  String get logLevelError => '错误';

  @override
  String get logLevelWarning => '警告';

  @override
  String get logLevelBrief => '简略';

  @override
  String get logLevelDetailed => '详细';

  @override
  String get playbackParameters => '播放参数';

  @override
  String get defaultPlaybackSpeed => '默认倍速';

  @override
  String get holdPlaybackSpeed => '长按倍速';

  @override
  String get holdPlaybackSpeedDescription => '长按屏幕或按住方向键时的倍速';

  @override
  String get arrowKeySeek => '方向键跳转';

  @override
  String get arrowKeySeekDescription => '左右方向键的快进/快退秒数';

  @override
  String get skipDuration => '跳过时长';

  @override
  String get skipDurationDescription => '顶栏跳过按钮的秒数';

  @override
  String get topButtonSkipDuration => '顶部按钮快进时长';

  @override
  String get controlsHideDelay => '控制栏消失时间';

  @override
  String get controlsHideDelayDescription => '播放控制器自动隐藏前的停留时长';

  @override
  String get defaultVideoFit => '默认视频比例';

  @override
  String get videoFitAutomatic => '自动';

  @override
  String get videoFitCrop => '裁切填充';

  @override
  String get videoFitStretch => '拉伸填充';

  @override
  String get restoreDefaultSettings => '恢复默认设置';

  @override
  String get restorePlaybackSettingsDescription => '将播放相关设置恢复为默认值';

  @override
  String get unsupportedDecoderFallback => '选择不受支持的解码器将回退到软件解码';

  @override
  String get decoderAny => '启用任意可用解码器';

  @override
  String get decoderBest => '启用最佳解码器';

  @override
  String get decoderBestCopy => '启用带拷贝功能的最佳解码器';

  @override
  String get decoderWindows8 => 'DirectX 11（Windows 8 及以上）';

  @override
  String get decoderWindows7 => 'DXVA2（Windows 7 及以上）';

  @override
  String decoderNoDirect(String name) {
    return '$name（非直通）';
  }

  @override
  String decoderNvidiaOnly(String name) {
    return '$name（NVIDIA 独占）';
  }

  @override
  String decoderExperimental(String name) {
    return '$name（全平台、实验性）';
  }

  @override
  String decoderDeprecated(String name) {
    return '$name（过时）';
  }

  @override
  String get decoderRockchip => 'Rockchip MPP（仅部分 Rockchip 芯片）';

  @override
  String get rendererAutomatic => '自动选择';

  @override
  String get rendererGpu => '基于 OpenGL，通用和稳健的选项';

  @override
  String get rendererGpuNext => '基于 Vulkan，在新设备上表现最好';

  @override
  String get rendererMediaCodec => '功耗最低，不支持超分辨率';

  @override
  String get selectRendererDescription => '选择合适的渲染器以获得最佳播放体验';

  @override
  String get superResolutionRequirement =>
      '超分辨率需要启用硬件解码；若启用后仍不生效，请尝试将视频渲染器切换为 gpu。';

  @override
  String get defaultBehavior => '默认行为';

  @override
  String get disablePrompt => '关闭提示';

  @override
  String get disableSuperResolutionPromptDescription => '关闭每次启用超分辨率时的提示';

  @override
  String get superResolutionOff => '关闭';

  @override
  String get superResolutionOffDescription => '默认禁用超分辨率';

  @override
  String get superResolutionEfficiency => '效率档';

  @override
  String get superResolutionEfficiencyDescription =>
      '默认启用基于 Anime4K 的超分辨率（效率优先）';

  @override
  String get superResolutionQuality => '质量档';

  @override
  String get superResolutionQualityDescription => '默认启用基于 Anime4K 的超分辨率（质量优先）';

  @override
  String get restoreDefaultDanmakuSettings => '恢复默认弹幕设置';

  @override
  String get restoreDefaultDanmakuSettingsConfirmation =>
      '弹幕来源、显示和样式设置将恢复为默认值，关键词屏蔽列表不会被清空。';

  @override
  String get defaultDanmakuSettingsRestored => '已恢复默认弹幕设置';

  @override
  String get danmakuSource => '弹幕来源';

  @override
  String get danDanPlay => '弹弹play';

  @override
  String get danmakuBlocking => '弹幕屏蔽';

  @override
  String get keywordBlocking => '关键词屏蔽';

  @override
  String get danmakuDisplay => '弹幕显示';

  @override
  String get danmakuArea => '弹幕区域';

  @override
  String get danmakuDuration => '弹幕持续时间';

  @override
  String get duration => '持续时间';

  @override
  String get lineHeight => '行高';

  @override
  String get danmakuLineHeight => '弹幕行高';

  @override
  String get danmakuFollowSpeed => '弹幕跟随视频倍速';

  @override
  String get followPlaybackSpeed => '跟随视频倍速';

  @override
  String get danmakuFollowSpeedDescription => '开启后弹幕速度会随视频倍速而改变';

  @override
  String get followPlaybackSpeedDescription => '弹幕速度随视频倍速变化';

  @override
  String get topDanmaku => '顶部弹幕';

  @override
  String get bottomDanmaku => '底部弹幕';

  @override
  String get scrollingDanmaku => '滚动弹幕';

  @override
  String get massiveDanmaku => '海量弹幕';

  @override
  String get massiveDanmakuDescription => '弹幕过多时进行叠加绘制';

  @override
  String get danmakuDeduplication => '弹幕去重';

  @override
  String get danmakuDeduplicationDescription => '相同内容弹幕过多时合并为一条弹幕';

  @override
  String get danmakuStyle => '弹幕样式';

  @override
  String get danmakuBorder => '弹幕描边';

  @override
  String get danmakuBorderWidth => '弹幕描边粗细';

  @override
  String get danmakuColor => '弹幕颜色';

  @override
  String get fontSize => '字体大小';

  @override
  String get fontWeight => '字体字重';

  @override
  String get danmakuOpacity => '弹幕不透明度';

  @override
  String get restoreDanmakuSettingsDescription => '将弹幕相关设置恢复为默认值';

  @override
  String get danmakuSettingsSheetDescription => '调整弹幕显示、样式与屏蔽规则';

  @override
  String get timelineOffset => '时间轴偏移';

  @override
  String get danmakuTimeOffset => '弹幕时间轴偏移';

  @override
  String get danmakuTimeOffsetDescription => '校准弹幕相对于视频画面的显示时间';

  @override
  String get noOffset => '无偏移';

  @override
  String get advance => '提前';

  @override
  String get delay => '延后';

  @override
  String offsetWithDuration(String direction, String duration) {
    return '$direction $duration';
  }

  @override
  String get advanceOneSecond => '提前 1 秒';

  @override
  String get delayOneSecond => '延后 1 秒';

  @override
  String get restoreNoOffset => '恢复无偏移';

  @override
  String get danmakuShieldDescription => '使用关键词或正则表达式过滤弹幕';

  @override
  String get addBlockingRule => '添加屏蔽规则';

  @override
  String get regexBlockingDescription => '以“/”开头和结尾将视作正则表达式，如“/\\d+/”表示屏蔽所有数字';

  @override
  String get blockingRuleHint => '输入关键词或正则表达式';

  @override
  String get add => '添加';

  @override
  String blockingRuleCount(int count) {
    return '已添加 $count 个关键词';
  }

  @override
  String get displayRefreshRateSettings => '屏幕帧率设置';

  @override
  String get restartIfRefreshRateNotApplied => '没有生效？请尝试重启应用';

  @override
  String get automatic => '自动';

  @override
  String get systemActive => '系统';

  @override
  String get badCertificate => '证书有误！';

  @override
  String get serverErrorRetry => '服务器异常，请稍后重试！';

  @override
  String get requestCancelledRetry => '请求已被取消，请重新请求';

  @override
  String get connectionErrorCheckSettings => '连接错误，请检查网络设置';

  @override
  String get connectionTimeoutCheckSettings => '网络连接超时，请检查网络设置';

  @override
  String get responseTimeoutRetry => '响应超时，请稍后重试！';

  @override
  String get sendTimeoutCheckSettings => '发送请求超时，请检查网络设置';

  @override
  String get responseParseTimeoutRetry => '响应解析超时，请稍后重试！';

  @override
  String networkException(String connection) {
    return '$connection 网络异常';
  }

  @override
  String get responseParseFailed => '响应解析失败';

  @override
  String get usingMobileData => '正在使用移动流量';

  @override
  String get usingWifi => '正在使用 Wi-Fi';

  @override
  String get usingEthernet => '正在使用局域网';

  @override
  String get usingVpn => '正在使用代理网络';

  @override
  String get usingOtherNetwork => '正在使用其他网络';

  @override
  String get notConnected => '未连接到任何网络';

  @override
  String get enterKeyword => '请输入关键词';

  @override
  String get keywordTooLong => '关键词过长';

  @override
  String get keywordAlreadyExists => '已存在该关键词';

  @override
  String get updateCheckFailedRetry => '检查更新失败，请稍后重试';

  @override
  String get playerLoadFailedTryAnotherSource => '加载失败，请尝试更换其他视频来源';

  @override
  String get noAvailableCache => '未找到可用缓存';

  @override
  String get onlineSourceUnavailable => '在线源不可用，请重新选择播放源';

  @override
  String get launchingExternalPlayer => '尝试唤起外部播放器';

  @override
  String get externalPlayerLaunchFailed => '唤起外部播放器失败';

  @override
  String get systemAppPickerUnavailable => '系统应用选择器不可用';

  @override
  String get deviceUnsupported => '暂不支持该设备';

  @override
  String get ruleUnsupported => '暂不支持该规则';

  @override
  String get downloadService => '下载服务';

  @override
  String get downloadServiceDescription => '视频下载后台服务';

  @override
  String get downloading => '正在下载';

  @override
  String get preparing => '准备中...';

  @override
  String get pauseAll => '暂停全部';

  @override
  String get downloadPaused => '下载已暂停';

  @override
  String taskCount(int count) {
    return '共 $count 个任务';
  }

  @override
  String downloadingProgress(int active, int total) {
    return '正在下载（$active/$total）';
  }

  @override
  String get insufficientStorage => '存储空间不足';

  @override
  String get insufficientStorageRetry => '存储空间不足，请清理后重试';

  @override
  String get storagePermissionDenied => '存储权限被拒绝';

  @override
  String get storageReadOnly => '存储为只读，无法写入';

  @override
  String storageErrorMessage(String message) {
    return '存储错误：$message';
  }

  @override
  String get liveStreamDownloadUnsupported => '不支持下载直播流（无有效分片）';

  @override
  String get m3u8NoSegments => 'M3U8 中未找到可下载的分片';

  @override
  String segmentDownloadFailed(int count) {
    return '$count 个分片下载失败';
  }

  @override
  String insufficientStorageAvailable(String available) {
    return '存储空间不足（可用：$available）';
  }

  @override
  String get urlNotM3u8 => 'URL 不是 M3U8 播放列表';

  @override
  String get responseTooLargeNotM3u8 => '响应过大，不是 M3U8 播放列表';

  @override
  String get timedShutdown => '定时关闭';

  @override
  String get timedShutdownExpired => '定时时间已到，视频已暂停';

  @override
  String timerRestarted(int minutes) {
    return '已重新开始 $minutes 分钟定时';
  }

  @override
  String get repeat => '重复';

  @override
  String get close => '关闭';

  @override
  String hoursAndMinutes(int hours, int minutes) {
    return '$hours 小时 $minutes 分钟';
  }

  @override
  String hourCount(int hours) {
    return '$hours 小时';
  }

  @override
  String minuteCount(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get customTimer => '自定义定时';

  @override
  String get selectValidTime => '请选择有效的时间';

  @override
  String timedShutdownSet(String duration) {
    return '已设置 $duration 后定时关闭';
  }

  @override
  String get hoursShort => '时';

  @override
  String get minutesShort => '分';

  @override
  String get bangumiDeleteUnsupported => 'Bangumi 不支持删除收藏';

  @override
  String get bangumiDeleteExplanation =>
      '因为安全考虑，Bangumi 未提供删除接口。您可以把本地和远端收藏标记为“抛弃”，或仅删除本地收藏并打开网页手动删除 Bangumi 数据。';

  @override
  String get openWebPage => '打开网页';

  @override
  String get markAsAbandoned => '标记为抛弃';

  @override
  String get bangumiPageOpenFailed => '无法打开 Bangumi 网页';

  @override
  String get bangumiNotInitializedChangeCancelled =>
      'Bangumi 未初始化，同步失败，已取消本次状态修改';

  @override
  String get syncingToBangumi => '正在同步到 Bangumi…';

  @override
  String get syncedToBangumi => '已同步到 Bangumi';

  @override
  String get bangumiSyncFailedChangeCancelled => '同步到 Bangumi 失败，已取消本次状态修改';

  @override
  String bangumiSyncFailedChangeCancelledWithError(String error) {
    return '同步到 Bangumi 失败，已取消本次状态修改：$error';
  }

  @override
  String get webDavCollectSyncDisabled => '未开启 WebDAV 收藏同步';

  @override
  String get webDavDisabledOrInvalid => '未开启 WebDAV 同步或配置无效';

  @override
  String webDavConnectionFailed(String error) {
    return 'WebDAV 连接失败：$error';
  }

  @override
  String get webDavSyncComplete => 'WebDAV 同步完成';

  @override
  String webDavSyncFailed(String error) {
    return 'WebDAV 同步失败：$error';
  }

  @override
  String get webDavUploadComplete => 'WebDAV 上传完成';

  @override
  String webDavUploadFailed(String error) {
    return 'WebDAV 上传失败：$error';
  }

  @override
  String get bangumiSyncDisabledEnableInSettings => '未开启 Bangumi 同步，请先在设置中启用';

  @override
  String get bangumiSyncNotInitializedCheckToken =>
      'Bangumi 同步已开启但未初始化，请检查 Token 后重试';

  @override
  String get bangumiSyncComplete => 'Bangumi 同步完成';

  @override
  String get noSyncDifferences => '未发现状态差异，无需同步';

  @override
  String bangumiSyncFailed(String error) {
    return 'Bangumi 同步失败：$error';
  }

  @override
  String bangumiAccessFailed(String error) {
    return 'Bangumi 访问失败：$error';
  }

  @override
  String get enterBangumiAccessToken => '请先填写 Bangumi Access Token';

  @override
  String get bangumiOperationInProgress => 'Bangumi：当前有操作正在进行，请稍后再试';

  @override
  String get bangumiUsernameFailed => 'Bangumi：获取用户名失败';

  @override
  String get syncDisabled => '同步已关闭';

  @override
  String get bangumiSyncInProgress => 'Bangumi 正在同步';

  @override
  String get startingBangumiSync => '开始同步 Bangumi 状态';

  @override
  String get uploadingLocalStatus => '正在上传本地新增状态';

  @override
  String get uploadLocalStatusFailed => '上传本地新增状态失败';

  @override
  String bangumiItemUploadFailed(int id) {
    return '同步失败：条目 $id 上传到 Bangumi 失败';
  }

  @override
  String get fillingMissingLocalStatus => '正在补全本地缺失状态';

  @override
  String get resolvingConflictsLocalFirst => '本地优先：正在处理冲突状态';

  @override
  String get resolvingConflictsBangumiFirst => 'Bangumi 优先：正在处理冲突状态';

  @override
  String get bangumiStatusSyncComplete => 'Bangumi 状态同步完成';

  @override
  String get enterWebDavUrl => '请先填写 WebDAV URL';

  @override
  String episodeNumber(int number) {
    return '第$number集';
  }

  @override
  String get episodeParseFailed => '集数解析失败';

  @override
  String get episodeNotDownloaded => '该集数未下载';

  @override
  String get danmakuLoadFailedManualSearch => '弹幕加载失败，可手动检索';

  @override
  String get videoParseTimeoutRetry => '视频解析超时，请重试';

  @override
  String videoParseFailed(String error) {
    return '视频解析失败：$error';
  }

  @override
  String playlistNumber(int number) {
    return '播放列表$number';
  }

  @override
  String syncPlayInvalidServer(String endpoint) {
    return 'SyncPlay：服务器地址不合法 $endpoint';
  }

  @override
  String syncPlayInterrupted(String message) {
    return 'SyncPlay：同步中断 $message';
  }

  @override
  String get reconnect => '重新连接';

  @override
  String get syncPlayOnlyUser => 'SyncPlay：您是当前房间中的唯一用户';

  @override
  String syncPlayFollowingUser(String username) {
    return 'SyncPlay：当前以用户 $username 的进度为准';
  }

  @override
  String syncPlayUserLeft(String username) {
    return 'SyncPlay：$username 离开了房间';
  }

  @override
  String syncPlayUserJoined(String username) {
    return 'SyncPlay：$username 加入了房间';
  }

  @override
  String get unknownUser => '未知用户';

  @override
  String syncPlayEpisodeChanged(String username, int episode) {
    return 'SyncPlay：$username 切换到第 $episode 话';
  }

  @override
  String syncPlayPaused(String username) {
    return 'SyncPlay：$username 暂停了播放';
  }

  @override
  String syncPlayStarted(String username) {
    return 'SyncPlay：$username 开始了播放';
  }

  @override
  String syncPlayConnectionFailed(String message) {
    return 'SyncPlay：连接失败 $message';
  }

  @override
  String playerInternalError(String error, String url) {
    return '播放器内部错误：$error $url';
  }

  @override
  String get mobileDataLowMemoryMode => '正在使用移动数据，已临时启用低内存模式以减少缓存';

  @override
  String get remoteCasting => '远程投屏';

  @override
  String get exit => '退出';

  @override
  String get startSearching => '开始搜索';

  @override
  String castingToDevice(String device) {
    return '尝试投屏至 $device';
  }

  @override
  String dlnaErrorRetry(String error) {
    return 'DLNA 异常：$error\n请尝试重新进入 DLNA 投屏或切换设备';
  }

  @override
  String get search => '搜索';

  @override
  String get filter => '筛选';

  @override
  String get imageSearch => '图片搜索';

  @override
  String tagFilter(String tag) {
    return '标签：$tag';
  }

  @override
  String sortFilter(String sort) {
    return '排序：$sort';
  }

  @override
  String seasonFilter(String season) {
    return '季度：$season';
  }

  @override
  String dateFilter(String range) {
    return '日期：$range';
  }

  @override
  String rankFilter(String range) {
    return '排名：$range';
  }

  @override
  String scoreFilter(String range) {
    return '评分：$range';
  }

  @override
  String weekdayFilter(String weekdays) {
    return '星期：$weekdays';
  }

  @override
  String get hideWatched => '隐藏已看';

  @override
  String get hideAbandoned => '隐藏已弃';

  @override
  String get noSearchSuggestions => '暂无搜索建议，按回车直接检索';

  @override
  String get nothingFound => '什么都没有找到 (;´༎ຶД༎ຶ`)';

  @override
  String get tapToRetry => '点击重试';

  @override
  String get filterConditions => '筛选条件';

  @override
  String get filterConditionsDescription => '组合标签、季度和评分等条件，更快找到想看的番剧。';

  @override
  String get sort => '排序';

  @override
  String get sortDescription => '选择列表优先展示的内容。';

  @override
  String get sortHeat => '热度';

  @override
  String get sortRank => '排名';

  @override
  String get sortScore => '评分';

  @override
  String get sortMatch => '匹配';

  @override
  String get tags => '标签';

  @override
  String get tagsDescription => '选择多个标签时，会优先寻找同时包含这些标签的番剧。';

  @override
  String get customTag => '自定义标签';

  @override
  String get addTag => '添加标签';

  @override
  String get clearTags => '清空标签';

  @override
  String get seasonAndDate => '季度与日期';

  @override
  String get seasonAndDateDescription => '按播出季度查找，也可以指定更精确的日期范围。';

  @override
  String get season => '季度';

  @override
  String get customDate => '自定义日期';

  @override
  String get anyDate => '不限日期';

  @override
  String get numericRange => '数值范围';

  @override
  String get numericRangeDescription => '只显示符合评分或排名范围的番剧。';

  @override
  String get enableScoreRange => '启用评分范围';

  @override
  String get enableRankRange => '启用排名范围';

  @override
  String get weekday => '星期';

  @override
  String get weekdayDescription => '按放送星期过滤，多个星期按任一匹配处理。';

  @override
  String weekdayNumber(int number) {
    return '周$number';
  }

  @override
  String get filterSection => '过滤';

  @override
  String get filterSectionDescription => '控制是否隐藏已经看过或放弃的番剧。';

  @override
  String get reset => '重置';

  @override
  String get apply => '应用';

  @override
  String get winter => '冬季';

  @override
  String get spring => '春季';

  @override
  String get summer => '夏季';

  @override
  String get autumn => '秋季';

  @override
  String get imageTooLarge => '图片大小不能超过 25MB';

  @override
  String get enterValidImageUrl => '请输入有效的图片链接';

  @override
  String get selectImageFirst => '请先选择图片文件';

  @override
  String get unknownAnime => '未知番剧';

  @override
  String episodeValue(String episode) {
    return '第 $episode 集';
  }

  @override
  String episodesValue(String episodes) {
    return '剧集：$episodes';
  }

  @override
  String get unknownEpisode => '剧集未知';

  @override
  String get switchToImageUpload => '改为上传图片文件';

  @override
  String get switchToImageUrl => '改为输入图片 URL';

  @override
  String get searching => '搜索中…';

  @override
  String get startSearch => '开始搜索';

  @override
  String get selectImage => '点击选择图片';

  @override
  String get supportedImageFormats => '支持 JPG、PNG、WEBP 格式';

  @override
  String get imagePreviewFailed => '图片预览失败';

  @override
  String get imageSelected => '已选择图片';

  @override
  String get tapToReselectImage => '点击可重新选择图片';

  @override
  String get reselect => '重新选择';

  @override
  String get enterImageUrl => '请输入图片链接';

  @override
  String get clear => '清除';

  @override
  String get imageUrlPreviewHint => '输入图片链接后预览';

  @override
  String get loading => '加载中…';

  @override
  String get imageLoadFailed => '图片加载失败';

  @override
  String get checkLinkValidity => '请检查链接是否有效';

  @override
  String get recognizingImage => '正在识别图片';

  @override
  String get recognizingImageDescription => '请稍候，正在从截图中匹配番剧信息';

  @override
  String get imageResultsPlaceholder => '搜索结果将在这里展示';

  @override
  String get noImageSearchResults => '未获取到搜索结果';

  @override
  String get imageSearchStartHint => '选择图片文件或输入图片链接后开始搜索';

  @override
  String get recognitionResults => '识别结果';

  @override
  String similarityValue(String value) {
    return '相似度：$value';
  }

  @override
  String timeRangeValue(String range) {
    return '时间：$range';
  }

  @override
  String get imageSearchOriginalRatioTip => '仅支持使用原始比例番剧截图搜索结果';

  @override
  String get imageSearchQualityTip => '截图应清晰，避免过度压缩或添加水印';

  @override
  String get searchEngineProvidedByPrefix => '搜索引擎由 ';

  @override
  String get searchEngineProvidedBySuffix => ' 提供支持';

  @override
  String get animeImageSearch => '以图搜番';

  @override
  String get saveRuleOrderFailed => '保存规则顺序失败';

  @override
  String get createRule => '新建规则';

  @override
  String get importFromRuleRepository => '从规则仓库导入';

  @override
  String get importFromClipboard => '从剪贴板导入';

  @override
  String get importFromFile => '从文件导入';

  @override
  String get importRulesFromClipboard => '从剪贴板导入规则';

  @override
  String get ruleImportInputHint => '可粘贴多条 kazumi:// 链接或 JSON 数组';

  @override
  String get importAction => '导入';

  @override
  String get selectedFileUnreadable => '无法读取所选文件';

  @override
  String readRuleFileFailed(String error) {
    return '读取规则文件失败：$error';
  }

  @override
  String get noRulesToImport => '没有可导入的规则';

  @override
  String ruleImportSummary(int success, int duplicates, int failures) {
    return '导入完成：成功 $success 条，跳过重复 $duplicates 条，失败 $failures 条';
  }

  @override
  String saveImportedRulesFailed(String error) {
    return '保存导入规则失败：$error';
  }

  @override
  String get checkRuleUpdatesFailed => '检查规则更新失败';

  @override
  String selectedItemCount(int count) {
    return '已选择 $count 项';
  }

  @override
  String get deleteRules => '删除规则';

  @override
  String deleteSelectedRulesConfirmation(int count) {
    return '确定要删除选中的 $count 条规则吗？';
  }

  @override
  String get deleteRuleFailed => '删除规则失败';

  @override
  String get delete => '删除';

  @override
  String get updateAll => '更新全部';

  @override
  String get addRule => '添加规则';

  @override
  String get noAvailableRules => '啊咧（⊙.⊙） 没有可用规则的说';

  @override
  String get updateAvailable => '可更新';

  @override
  String get searchValid => '搜索有效';

  @override
  String get ruleUpdateStatusUnavailable => '尚未获取规则更新状态';

  @override
  String get ruleNotInRepository => '规则仓库中没有当前规则';

  @override
  String get ruleAlreadyLatest => '规则已是最新';

  @override
  String get update => '更新';

  @override
  String get edit => '编辑';

  @override
  String get test => '测试';

  @override
  String get ruleLink => '规则链接';

  @override
  String get copyToClipboard => '复制到剪贴板';

  @override
  String get share => '分享';

  @override
  String get updating => '更新中';

  @override
  String get importing => '导入中';

  @override
  String get updateRulesFailed => '更新规则失败';

  @override
  String get saveRuleFailed => '保存规则失败';

  @override
  String get importSucceeded => '导入成功';

  @override
  String get updateSucceeded => '更新成功';

  @override
  String get ruleRequiresNewerClient => '规则需要更高版本客户端';

  @override
  String get importRuleFailed => '导入规则失败';

  @override
  String get remoteRuleNotNewer => '远程规则版本不高于本地，已跳过更新';

  @override
  String get noRulesToUpdate => '没有可更新的规则';

  @override
  String updateSuccessCount(int count) {
    return '更新成功 $count 条';
  }

  @override
  String successCount(int count) {
    return '成功 $count 条';
  }

  @override
  String incompatibleCount(int count) {
    return '不兼容 $count 条';
  }

  @override
  String skippedCount(int count) {
    return '已跳过 $count 条';
  }

  @override
  String failedCount(int count) {
    return '失败 $count 条';
  }

  @override
  String updateSummary(String summary) {
    return '更新完成：$summary';
  }

  @override
  String pluginTestTitle(String name) {
    return '$name 测试';
  }

  @override
  String get startTest => '开始测试';

  @override
  String get searchRequestTest => '1. 搜索请求测试';

  @override
  String get searchParseTest => '2. 搜索解析测试';

  @override
  String get chapterListTest => '3. 章节列表测试';

  @override
  String get testKeyword => '测试关键词';

  @override
  String get retryTest => '重试测试';

  @override
  String get testing => '测试中…';

  @override
  String get testNotRun => '未执行测试';

  @override
  String responseLength(String format, int count) {
    return '$format 长度：$count 字符';
  }

  @override
  String get runTestHint => '点击顶部“开始测试”按钮执行';

  @override
  String get parsing => '解析中…';

  @override
  String get parseNotRun => '未执行解析';

  @override
  String get noParsedResults => '未解析到结果';

  @override
  String skippedSuffix(int count) {
    return '，跳过 $count 条';
  }

  @override
  String parsedResultCount(int count, String skipped) {
    return '解析到 $count 条结果$skipped';
  }

  @override
  String get completeSearchRequestFirst => '请先完成搜索请求测试';

  @override
  String get noSearchResultsParsed => '未解析到搜索结果';

  @override
  String nodesSkipped(int count) {
    return '部分节点被跳过（$count）';
  }

  @override
  String get noMatchingFragment => '无匹配片段';

  @override
  String get hideMatchingFragment => '隐藏匹配片段';

  @override
  String get viewMatchingFragment => '查看匹配片段';

  @override
  String linkValue(String link) {
    return '链接：$link';
  }

  @override
  String get fetching => '获取中…';

  @override
  String get noValidSearchResults => '无有效搜索结果';

  @override
  String get chapterParsingNotNeeded => '无需解析章节';

  @override
  String get chapterDataNotFetched => '未获取章节数据';

  @override
  String playbackRoadCount(int count, String skipped) {
    return '获取到 $count 个播放线路$skipped';
  }

  @override
  String get chapterRuleMissing => '未填写章节规则';

  @override
  String get parseValidResultFirst => '请先解析到有效结果';

  @override
  String get noAvailableChapters => '无可用章节';

  @override
  String playbackRoadTitle(int number, String name) {
    return '播放线路 $number：$name';
  }

  @override
  String chapterCount(int count) {
    return '章节数量：$count';
  }

  @override
  String get historyManagement => '记录管理';

  @override
  String get clearAllHistoryConfirmation => '确认要清除所有历史记录吗？';

  @override
  String get history => '历史记录';

  @override
  String get exitEditMode => '退出编辑';

  @override
  String get clearAll => '清除全部';

  @override
  String get noHistory => '暂无历史记录';

  @override
  String get pressBackAgainToExit => '再按一次退出应用';

  @override
  String get agreeAndContinue => '同意并继续';

  @override
  String get finish => '完成';

  @override
  String get nextStep => '下一步';

  @override
  String get previousStep => '上一步';

  @override
  String get initializeRulesFailed => '初始化规则失败';

  @override
  String get updateSource => '更新来源';

  @override
  String get updateSourceDescription => '选择获取应用更新的方式';

  @override
  String get githubUpdateDescription => '应用内检查更新，适合大多数用户';

  @override
  String get fdroidUpdateDescription => '由 F-Droid 商店管理更新';

  @override
  String get networkMirrors => '网络镜像';

  @override
  String get networkMirrorsDescription => '中国大陆用户推荐启用，提升访问速度';

  @override
  String get bangumiMirror => 'Bangumi 镜像';

  @override
  String get bangumiMirrorDescription => '加速热门与时间表加载';

  @override
  String get ruleRepositoryMirror => '规则仓库镜像';

  @override
  String get ruleRepositoryMirrorDescription => '加速规则的下载与更新';

  @override
  String get mirrorSettingsLaterHint => '可稍后在 设置 → 同步设置 中修改';

  @override
  String get disclaimerLoadFailed => '免责声明加载失败，请退出后重试。';

  @override
  String get welcome => '欢迎使用';

  @override
  String get readAndAcceptDisclaimer => '请阅读并同意免责声明';

  @override
  String get addRules => '添加规则';

  @override
  String get addRulesDescription => '规则提供番剧搜索源，可稍后在 设置 → 规则管理 中调整';

  @override
  String get popularAnime => '热门番组';

  @override
  String watchedToEpisode(String episode) {
    return '看到 $episode';
  }

  @override
  String clearLogsFailed(String error) {
    return '清空失败：$error';
  }

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String copyFailed(String error) {
    return '复制失败：$error';
  }

  @override
  String get logs => '日志';

  @override
  String get loadLogsFailed => '加载日志失败';

  @override
  String get noLogs => '暂无日志';

  @override
  String get clearLogs => '清空日志';

  @override
  String get copyLogs => '复制日志';

  @override
  String bangumiMirrorLoadError(String status) {
    return '啊咧（⊙.⊙） 无法加载数据\nBangumi 镜像$status';
  }

  @override
  String get enabledStatus => '已启用';

  @override
  String get disabledStatus => '已禁用';

  @override
  String get mirrorSwitch => '镜像开关';

  @override
  String get continueWatching => '继续观看';

  @override
  String get animeUnit => '部';

  @override
  String get episodeUnit => '集';

  @override
  String get watchedAnime => '看过番剧';

  @override
  String get watchedEpisodes => '观看集数';

  @override
  String get offlineCache => '离线缓存';

  @override
  String recentlyWatchedTitle(String title) {
    return '最近看到 $title';
  }

  @override
  String get noWatchHistoryYet => '还没有观看记录';

  @override
  String get offlineDownloads => '离线下载';

  @override
  String get downloadTasksAndLocalFiles => '缓存任务与本地文件';

  @override
  String get settingsOverviewDescription => '播放、弹幕、外观与规则';

  @override
  String get collectionSummaryHint => '收藏番剧后会在这里汇总';

  @override
  String recentlyWatchedTime(String time) {
    return '最近观看 $time';
  }

  @override
  String get myCollection => '我的追番';

  @override
  String get preparingBangumiCollectionSync => '准备同步 Bangumi 收藏…';

  @override
  String get webDavSynced => 'WebDAV 已同步';

  @override
  String get webDavNotCompleted => 'WebDAV 未完成';

  @override
  String get bangumiSynced => 'Bangumi 已同步';

  @override
  String get bangumiNotCompleted => 'Bangumi 未完成';

  @override
  String get webDavLatestDataUploaded => 'WebDAV 已回传最新数据';

  @override
  String get webDavLatestDataNotUploaded => 'WebDAV 未回传最新数据';

  @override
  String get syncingWebDavCollection => '正在同步 WebDAV 收藏…';

  @override
  String get uploadingLatestCollectionToWebDav => '正在回传最新收藏到 WebDAV…';

  @override
  String get syncUnavailableEnableOne => '同步功能不可用，请至少开启一个同步功能';

  @override
  String get syncUnavailableInEditMode => '编辑模式无法执行同步';

  @override
  String get noCollectionContent => '暂无追番内容';

  @override
  String get preparingCollectionSync => '准备开始同步收藏…';

  @override
  String get fullCollectionSyncInProgress => '收藏全量同步中';

  @override
  String get mondayShort => '一';

  @override
  String get tuesdayShort => '二';

  @override
  String get wednesdayShort => '三';

  @override
  String get thursdayShort => '四';

  @override
  String get fridayShort => '五';

  @override
  String get saturdayShort => '六';

  @override
  String get sundayShort => '日';

  @override
  String get timeMachine => '时间机器';

  @override
  String get timeMachineDescription => '按季度回到任意放送季，时间线会立即切换。';

  @override
  String currentlyViewingSeason(String season) {
    return '当前查看 $season';
  }

  @override
  String yearLabel(int year) {
    return '$year年';
  }

  @override
  String availableSeasonCount(int count) {
    return '共 $count 个季度可选';
  }

  @override
  String get timePriority => '时间优先';

  @override
  String get ratingPriority => '评分优先';

  @override
  String get popularityPriority => '热度优先';

  @override
  String get timelineOptions => '时间线选项';

  @override
  String get timelineOptionsDescription => '调整排序和过滤条件，结果会立即应用到当前时间线。';

  @override
  String currentSort(String sort) {
    return '当前排序 $sort';
  }

  @override
  String get noFiltersEnabled => '未启用过滤条件';

  @override
  String enabledFilterCount(int count) {
    return '已启用 $count 个过滤条件';
  }

  @override
  String get filters => '过滤器';

  @override
  String get timelineFiltersDescription => '按收藏状态收起不需要显示的条目，支持连续调整。';

  @override
  String get hideAbandonedAnime => '不显示已抛弃的番剧';

  @override
  String get hideAbandonedAnimeDescription => '隐藏已经标记为抛弃的条目。';

  @override
  String get hideWatchedAnime => '不显示已看过的番剧';

  @override
  String get hideWatchedAnimeTimelineDescription => '把已经看完的条目从时间线中移除。';

  @override
  String get onlyShowWatchingAnime => '只显示在看的番剧';

  @override
  String get onlyShowWatchingAnimeDescription => '聚焦当前正在追更的条目。';

  @override
  String get sortOrder => '排序方式';

  @override
  String get timelineSortDescription => '选择每一天内番剧卡片的排列方式。';

  @override
  String get sortByPopularity => '按热度排序';

  @override
  String get sortByPopularityDescription => '优先展示讨论度和关注度更高的条目。';

  @override
  String get sortByRating => '按评分排序';

  @override
  String get sortByRatingDescription => '优先展示评分更高的条目。';

  @override
  String get sortByTime => '按时间排序';

  @override
  String get sortByTimeDescription => '恢复默认时间顺序，方便按播出节奏查看。';

  @override
  String get videoDetails => '视频详情';

  @override
  String get videoDetailsDescription => '实时播放状态与诊断信息';

  @override
  String get status => '状态';

  @override
  String get copyAllLogs => '复制全部日志';

  @override
  String get playbackSource => '播放源';

  @override
  String get mediaUrl => '媒体地址';

  @override
  String get playlist => '播放列表';

  @override
  String get video => '视频';

  @override
  String get resolution => '分辨率';

  @override
  String get videoParameters => '视频参数';

  @override
  String get videoTracks => '视频轨道';

  @override
  String get videoBitrate => '视频码率';

  @override
  String get audio => '音频';

  @override
  String get audioParameters => '音频参数';

  @override
  String get audioTracks => '音频轨道';

  @override
  String get audioBitrate => '音频码率';

  @override
  String get noData => '暂无数据';

  @override
  String get noRuntimeLogs => '暂无运行日志';

  @override
  String get loadCommentsFailed => '评论获取失败';

  @override
  String get retry => '重试';

  @override
  String get episodeTitle => '本集标题';

  @override
  String get switchManually => '手动切换';

  @override
  String get descending => '倒序';

  @override
  String get ascending => '正序';

  @override
  String get loadingEpisodeList => '分集列表加载中';

  @override
  String get episodeListNotFound => '未找到分集列表';

  @override
  String get episodeList => '分集列表';

  @override
  String get pictureInPictureUnsupported => '当前设备不支持画中画';

  @override
  String get enterPictureInPictureFailed => '进入画中画失败';

  @override
  String get alreadyLatestEpisode => '已经是最新一集';

  @override
  String get alreadyFirstEpisode => '已经是第一集';

  @override
  String loadingEpisode(String episode) {
    return '正在加载$episode';
  }

  @override
  String get desktopScreenshotUnsupported => '桌面端暂未支持保存截图';

  @override
  String get screenshotNoImage => '截图失败：未获取到图像';

  @override
  String screenshotSaveFailed(String error) {
    return '截图保存失败：$error';
  }

  @override
  String screenshotFailed(String error) {
    return '截图失败：$error';
  }

  @override
  String get compatibilityNotice => '兼容性提示';

  @override
  String get mediaCodecSuperResolutionUnsupported =>
      'MediaCodec 渲染器不支持超分辨率功能。\n\n如需使用超分辨率，请在播放设置中将视频渲染器切换为 gpu 或 gpu-next。';

  @override
  String get performanceNotice => '性能提示';

  @override
  String get superResolutionPerformanceWarning => '启用超分辨率（质量档）可能会造成设备卡顿，是否继续？';

  @override
  String get maximumSpeedReached => '已达倍速上限';

  @override
  String get minimumSpeedReached => '已达倍速下限';

  @override
  String get searchingDanmaku => '弹幕检索中';

  @override
  String danmakuSearchError(String error) {
    return '弹幕检索错误：$error';
  }

  @override
  String get noMatchingResults => '未找到匹配结果';

  @override
  String get tooManyDanmakuResultsHint => '结果较多，仅显示部分条目，可补充更完整的番剧名缩小范围';

  @override
  String get danmakuSwitchSucceeded => '弹幕切换成功';

  @override
  String get noDanmakuContent => '未找到弹幕内容';

  @override
  String get danmakuSwitchFailed => '弹幕切换失败';

  @override
  String get danmakuSearch => '弹幕检索';

  @override
  String get animeName => '番剧名';

  @override
  String get submit => '提交';

  @override
  String get danmakuInputHint => '发个友善的弹幕见证当下';

  @override
  String get danmakuDisabled => '已关闭弹幕';

  @override
  String get send => '发送';

  @override
  String get playbackSpeed => '播放速度';

  @override
  String get defaultSpeed => '默认速度';

  @override
  String get skipSeconds => '跳过秒数';

  @override
  String get danmakuLoading => '弹幕加载中…';

  @override
  String get closeDanmaku => '关闭弹幕';

  @override
  String get openDanmaku => '打开弹幕';

  @override
  String skipButtonHint(int seconds) {
    return '快进 $seconds 秒，长按修改时间';
  }

  @override
  String get pause => '暂停';

  @override
  String get play => '播放';

  @override
  String get nextEpisode => '下一集';

  @override
  String get playbackSpeedShort => '倍速';

  @override
  String get videoAspectRatio => '视频比例';

  @override
  String get episodePanel => '选集面板';

  @override
  String get back => '返回';

  @override
  String get pictureInPicture => '画中画';

  @override
  String get moreOptions => '更多选项';

  @override
  String get switchDanmaku => '弹幕切换';

  @override
  String get externalPlayback => '外部播放';

  @override
  String get doNotEnable => '不开启';

  @override
  String minutesCount(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get custom => '自定义';

  @override
  String timedShutdownRemaining(String remaining) {
    return '定时关闭 ($remaining)';
  }

  @override
  String get watchTogether => '一起看';

  @override
  String get unlockPanel => '解锁面板';

  @override
  String get lockPanel => '锁定面板';

  @override
  String get watchTogetherDescription => '与好友同步播放、暂停与选集';

  @override
  String get cancelConnection => '取消连接';

  @override
  String get disconnect => '断开连接';

  @override
  String get connecting => '正在连接';

  @override
  String get createRoom => '创建房间';

  @override
  String get createRoomDescription => '生成房间号并邀请好友';

  @override
  String get joinRoom => '加入房间';

  @override
  String get joinRoomDescription => '已有好友的房间号';

  @override
  String get syncServer => '同步服务器';

  @override
  String get currentRoom => '当前房间';

  @override
  String get networkLatency => '网络延迟';

  @override
  String get shareRoomHint => '分享房间号，好友即可加入';

  @override
  String get shareRoomNumberWithFriends => '将房间号分享给好友';

  @override
  String get enterFriendsRoomNumber => '输入好友的房间号';

  @override
  String get createAndJoin => '创建并加入';

  @override
  String get roomNumber => '房间号';

  @override
  String get regenerate => '重新生成';

  @override
  String get roomNumberHint => '6-10 位数字';

  @override
  String get enterRoomNumber => '请输入房间号';

  @override
  String get invalidRoomNumber => '房间号为 6-10 位数字';

  @override
  String get nickname => '昵称';

  @override
  String get nicknameHint => '4-12 位英文字母，房间内可见';

  @override
  String get enterNickname => '请输入昵称';

  @override
  String get invalidNickname => '昵称为 4-12 位英文字母';

  @override
  String get customServer => '自定义服务器';

  @override
  String get serverAddressFormatHint => '地址格式为 host:port';

  @override
  String get sameServerRequired => '房间成员需使用同一服务器';

  @override
  String get save => '保存';

  @override
  String get serverAddress => '服务器地址';

  @override
  String get copied => '已复制';

  @override
  String get copy => '复制';

  @override
  String get downloadManagement => '下载管理';

  @override
  String get noDownloads => '暂无下载内容';

  @override
  String get resumingDownloads => '已开始恢复下载';

  @override
  String downloadCompletedSize(String size) {
    return '已完成 · $size';
  }

  @override
  String downloadSegmentProgress(int completed, int total, String speed) {
    return '$completed/$total 分片$speed';
  }

  @override
  String get downloadFailed => '下载失败';

  @override
  String downloadPausedPercent(String percent) {
    return '已暂停 · $percent%';
  }

  @override
  String get queued => '排队中';

  @override
  String get parsingVideoSource => '正在解析视频源';

  @override
  String get resume => '继续';

  @override
  String get downloadPrioritized => '已插队优先下载';

  @override
  String get prioritizeDownload => '优先下载';

  @override
  String get localFileMissing => '本地文件不存在';

  @override
  String get deleteDownload => '删除下载';

  @override
  String deleteEpisodeDownloadConfirmation(String episode) {
    return '确定要删除「$episode」的下载文件吗？';
  }

  @override
  String get deleteAllDownloads => '删除全部下载';

  @override
  String deleteAllAnimeDownloadsConfirmation(String anime) {
    return '确定要删除「$anime」的所有下载文件吗？';
  }

  @override
  String get selectEpisodesToDownload => '下载选集';

  @override
  String downloadEpisodeCountWithAdded(int total, int added) {
    return '共 $total 集 · $added 集已加入下载';
  }

  @override
  String totalEpisodeCount(int count) {
    return '共 $count 集';
  }

  @override
  String get deselectAll => '取消全选';

  @override
  String get selectAll => '全选';

  @override
  String get startDownload => '开始下载';

  @override
  String downloadSelectedEpisodes(int count) {
    return '下载 $count 集';
  }

  @override
  String episodesAddedToDownloadQueue(int count) {
    return '已添加 $count 集到下载队列，可在下载管理中查看';
  }

  @override
  String completedDownloadCount(int completed, int total) {
    return '$completed/$total 已完成';
  }

  @override
  String activeDownloadCountSuffix(int count) {
    return ' · $count 项进行中';
  }

  @override
  String get moreActions => '更多操作';

  @override
  String get startAll => '全部开始';

  @override
  String get deleteAll => '全部删除';

  @override
  String pluginNotFound(String name) {
    return '找不到插件 $name';
  }

  @override
  String get parseVideoSourceTimedOut => '解析视频源超时';

  @override
  String get cached => '缓存';

  @override
  String get online => '在线';

  @override
  String get editMode => '编辑模式';

  @override
  String get animeDetails => '番剧详情';

  @override
  String get deleteRecord => '删除记录';

  @override
  String get myComment => '我的吐槽';

  @override
  String get commentDeleted => '该评论已被删除';

  @override
  String get ratingBreakdown => '评分透视';

  @override
  String ratingVotePercentage(String percentage, int count) {
    return '$percentage% ($count人)';
  }

  @override
  String get broadcastStart => '放送开始';

  @override
  String peopleRated(int count) {
    return '$count 人评分：';
  }

  @override
  String get hiddenPeopleRated => '*** 人评分：';

  @override
  String get initializationFailed => '初始化失败';

  @override
  String get invalidImagePreviewParameters => '图片预览参数无效，请返回后重试。';

  @override
  String get returnHome => '返回首页';

  @override
  String get notificationPermissionRequired => '需要通知权限';

  @override
  String get notificationPermissionDescription =>
      '开启通知权限后，可以在后台下载时显示进度，并防止系统终止下载任务。\n\n如果拒绝，下载功能仍可使用，但在后台时可能被系统中断。';

  @override
  String get notNow => '稍后再说';

  @override
  String get allow => '允许';

  @override
  String bangumiInitializationFailed(String error) {
    return '初始化 Bangumi 失败，已关闭 Bangumi 同步：$error';
  }

  @override
  String get x11EnvironmentDetected => 'X11 环境检测';

  @override
  String get x11EnvironmentWarning =>
      '检测到您当前运行在 X11 环境下，Kazumi 可能出现性能问题或界面异常，建议切换到 Wayland。是否继续使用？';

  @override
  String get continueAction => '继续';

  @override
  String get createDesktopShortcut => '创建桌面快捷方式';

  @override
  String get createDesktopShortcutConfirmation => '是否在桌面创建 Kazumi 的快捷方式？';

  @override
  String get doNotCreateNow => '暂不创建';

  @override
  String get create => '创建';

  @override
  String get desktopShortcutCreated => '桌面快捷方式已创建';

  @override
  String get desktopShortcutCreationFailed => '桌面快捷方式创建失败';

  @override
  String ruleUpdatesAvailable(int count) {
    return '检测到 $count 条规则可以更新';
  }

  @override
  String get webDavEditor => 'WEBDAV 编辑';

  @override
  String configurationFailed(String error) {
    return '配置失败：$error';
  }

  @override
  String get configurationSucceededTesting => '配置成功，开始测试';

  @override
  String testFailedWithError(String error) {
    return '测试失败：$error';
  }

  @override
  String get syncingWatchHistory => '正在同步观看记录';

  @override
  String get watchHistorySyncCompleted => '观看记录同步完成';

  @override
  String watchHistorySyncFailed(String error) {
    return '观看记录同步失败：$error';
  }

  @override
  String get ruleRepository => '规则仓库';

  @override
  String get ruleRepositoryMirrorSettingDescription => '使用镜像访问规则更新和管理仓库';

  @override
  String get bangumiMirrorSettingDescription => '使用缓存后端加载榜单';

  @override
  String get configureBangumiTokenFirst => '请先配置 Bangumi 的 Access Token';

  @override
  String get bangumiInitializationRetryLater => 'Bangumi 初始化失败，请稍后再试';

  @override
  String get bangumiSync => 'Bangumi 同步';

  @override
  String get bangumiSyncDescription => '与 Bangumi 自动同步追番状态';

  @override
  String get bangumiConfiguration => 'Bangumi 配置';

  @override
  String webDavInitializationFailed(String error) {
    return 'WEBDAV 初始化失败：$error';
  }

  @override
  String get webDavSync => 'WEBDAV 同步';

  @override
  String get enableWebDavSyncFirst => '请先开启 WEBDAV 同步';

  @override
  String get watchHistorySync => '观看记录同步';

  @override
  String get watchHistorySyncDescription => '允许自动同步观看记录';

  @override
  String get collectionSync => '收藏同步';

  @override
  String get collectionSyncDescription => '允许 WebDAV 参与追番状态同步';

  @override
  String get webDavConfiguration => 'WEBDAV 配置';

  @override
  String get syncWatchHistoryNow => '立即同步观看记录';

  @override
  String get mergeWatchHistoryWithWebDav => '与 WEBDAV 双向合并观看记录';

  @override
  String get enableBangumiSyncFirst => '请先开启 Bangumi 同步';

  @override
  String get syncOptions => '同步选项';

  @override
  String get immediateSyncPrompt => '即时同步提示';

  @override
  String get immediateSyncPromptDescription => '点击追番按钮触发即时同步时显示提示框';

  @override
  String get syncPriority => '同步优先级';

  @override
  String get syncPriorityDescription => '当本地与 Bangumi 状态不一致时优先使用哪个状态';

  @override
  String get syncStatusNow => '立即同步状态';

  @override
  String get syncStatusNowDescription => '同步状态不一致或仅存在于本地/远端的条目';

  @override
  String get cannotOpenLink => '无法打开链接';

  @override
  String get generateBangumiAccessTokenHint => '点击此处前往 Bangumi 生成 Access Token';

  @override
  String get accessTokenRequired => 'Access Token 不能为空';

  @override
  String get bangumiTokenEmpty => 'Bangumi Token 为空，请检查';

  @override
  String get testingBangumiToken => '正在测试 Bangumi Token…';

  @override
  String validationFailed(String error) {
    return '验证失败：$error';
  }

  @override
  String bangumiTestSucceeded(String username) {
    return '测试成功，用户名：$username';
  }

  @override
  String get preparingBangumiStatusSync => '准备同步 Bangumi 状态…';

  @override
  String get exitKazumi => '退出 Kazumi';

  @override
  String get askEveryTime => '每次都询问';

  @override
  String get cacheManagement => '缓存管理';

  @override
  String get clearCoverCacheConfirmation => '缓存为番剧封面，清除后加载时需要重新下载，确认要清除缓存吗？';

  @override
  String get openSource => '开源';

  @override
  String get openSourceLicenses => '开源许可证';

  @override
  String get viewOpenSourceLicenses => '查看所有开源许可证';

  @override
  String get externalLinks => '外部链接';

  @override
  String get projectHomepage => '项目主页';

  @override
  String get sourceRepository => '代码仓库';

  @override
  String get iconDesign => '图标创作';

  @override
  String get animeIndex => '番剧索引';

  @override
  String get danDanPlayOpenPlatform => '弹弹play开放平台';

  @override
  String get community => '社区';

  @override
  String get tapToJoin => '点击加入';

  @override
  String get whenClosing => '关闭时';

  @override
  String get storageAndLogs => '存储与日志';

  @override
  String get errorLogs => '错误日志';

  @override
  String get clearCache => '清除缓存';

  @override
  String get calculating => '统计中…';

  @override
  String get appUpdates => '应用更新';

  @override
  String get checkAppUpdatesOnStartup => '启动时检查应用更新';

  @override
  String get checkAppUpdates => '检查应用更新';

  @override
  String currentVersion(String version) {
    return '当前版本 $version';
  }

  @override
  String get ruleUpdates => '规则更新';

  @override
  String get checkRuleUpdatesOnStartup => '启动时检查规则更新';

  @override
  String get notCollected => '未收藏';

  @override
  String get watching => '在看';

  @override
  String get planToWatch => '想看';

  @override
  String get onHold => '搁置';

  @override
  String get watched => '看过';

  @override
  String get abandoned => '抛弃';

  @override
  String get notFollowing => '未追';

  @override
  String get localFirst => '本地优先';

  @override
  String get bangumiFirst => 'Bangumi 优先';

  @override
  String get invalidPlaybackParameters => '播放参数无效，请返回后重试。';

  @override
  String get danmakuSendingUnsupported => '当前剧集不支持弹幕发送的说';

  @override
  String get danmakuEmpty => '弹幕内容为空';

  @override
  String get danmakuTooLong => '弹幕内容过长';

  @override
  String get joinWatchTogetherBeforeChatDanmaku => '你还没有加入一起看，无法发送聊天室弹幕';

  @override
  String get me => '我';

  @override
  String get sendDanmakuTo => '发送弹幕至';

  @override
  String get chooseDanmakuDestination => '选择这条弹幕的发送位置';

  @override
  String get sendDestination => '发送位置';

  @override
  String get sendToChatRoom => '发送到聊天室';

  @override
  String get visibleToWatchTogetherMembers => '同步观看成员均可看到';

  @override
  String get sendToRemoteDanmaku => '发送到远程弹幕库';

  @override
  String get sendAsVideoDanmaku => '作为视频弹幕发送';

  @override
  String get parsingVideoResource => '视频资源解析中';

  @override
  String get videoResourceParsedLoadingPlayer => '视频资源解析成功，播放器加载中';

  @override
  String get anthology => '合集';

  @override
  String playbackRoadNumber(int number) {
    return '播放线路$number';
  }

  @override
  String get episodes => '选集';

  @override
  String get comments => '评论';

  @override
  String get waitForVideoToLoad => '请等待视频加载完成';

  @override
  String get openDanmakuFirst => '请先打开弹幕';

  @override
  String get tapToSendDanmaku => '点我发弹幕';

  @override
  String get verificationSucceeded => '验证成功';

  @override
  String get searchWillRestart => '即将重新检索';

  @override
  String get noAliasesTryManualSearch => '无可用别名，试试手动检索';

  @override
  String resultCount(int count) {
    return '$count 条';
  }

  @override
  String get searchFailed => '检索失败';

  @override
  String get verificationRequired => '需要验证';

  @override
  String get noResults => '无结果';

  @override
  String moreActionsFor(String name) {
    return '$name 的更多操作';
  }

  @override
  String get aliasSearch => '别名检索';

  @override
  String get manualSearch => '手动检索';

  @override
  String get openInBrowser => '在浏览器中打开';

  @override
  String get sourceRequiresVerification => '这个源要求先完成验证';

  @override
  String get verify => '进行验证';

  @override
  String get sourceReturnedNoResults => '这个源没能返回结果';

  @override
  String get tryAnotherKeyword => '换个关键词再试试';

  @override
  String searchingKeywordProgress(String keyword, int done, int total) {
    return '「$keyword」· 检索中 $done/$total';
  }

  @override
  String keywordResultCount(String keyword, int count) {
    return '「$keyword」· $count 条结果';
  }

  @override
  String get selectPlaybackSource => '选择播放源';

  @override
  String get enterAlias => '输入别名';

  @override
  String get deleteConfirmation => '删除确认';

  @override
  String get deleteAliasConfirmation => '删除后无法恢复，确认要永久删除这个别名吗？';

  @override
  String executingVerificationScript(String name) {
    return '$name 正在执行验证脚本，请稍候';
  }

  @override
  String get verificationScriptRunningDescription => '已加载验证页面并执行自定义脚本，等待验证通过…';

  @override
  String automaticVerificationInProgress(String name) {
    return '$name 正在自动完成验证，请稍候';
  }

  @override
  String get automaticVerificationDescription => '已检测到验证按钮并模拟点击，等待验证通过…';

  @override
  String get enterCaptcha => '请输入验证码';

  @override
  String get captchaVerification => '验证码验证';

  @override
  String pluginRequiresCaptcha(String name) {
    return '$name 需要验证码验证';
  }

  @override
  String get loadingCaptchaImage => '正在加载验证码图片…';

  @override
  String get imageDecodeFailed => '图片解码失败';

  @override
  String get automaticVerification => '自动验证中';

  @override
  String get invalidAnimeDetailsParameters => '番组详情参数无效，请返回后重新打开。';

  @override
  String get overview => '概览';

  @override
  String get characters => '角色';

  @override
  String get related => '关联';

  @override
  String get staff => '制作人员';

  @override
  String get bindBangumiBeforeCommenting => '请先在同步设置中绑定你的 Bangumi 配置以发表吐槽';

  @override
  String get collectBeforeReviewing => '请先追番后再发表评价';

  @override
  String get postComment => '发表吐槽';

  @override
  String get startWatching => '开始观看';

  @override
  String get introduction => '简介';

  @override
  String get showLess => '加载更少';

  @override
  String get showMore => '加载更多';

  @override
  String get morePlus => '更多 +';

  @override
  String get loadRelatedItemsFailed => '获取关联条目失败，请重试';

  @override
  String get noRelatedItems => '暂无关联条目';

  @override
  String get loadFailedRetry => '获取失败，请重试';

  @override
  String get profile => '资料';

  @override
  String get character => '人物';

  @override
  String get viewCharacterImages => '查看人物图片';

  @override
  String get viewOriginalImage => '查看原图';

  @override
  String get noCharacterProfile => '暂无人物资料';

  @override
  String get notRated => '未评分';

  @override
  String get ratingAwful => '不忍直视';

  @override
  String get ratingVeryBad => '很差';

  @override
  String get ratingBad => '差';

  @override
  String get ratingPoor => '较差';

  @override
  String get ratingAverage => '不过不失';

  @override
  String get ratingOkay => '还行';

  @override
  String get ratingRecommended => '推荐';

  @override
  String get ratingHighlyRecommended => '力荐';

  @override
  String get ratingMasterpiece => '神作';

  @override
  String get ratingLegendary => '超神作';

  @override
  String maxTags(int count) {
    return '最多选择 $count 个标签';
  }

  @override
  String get enterTag => '请输入标签内容';

  @override
  String tagTooLong(int count) {
    return '单个标签不能超过 $count 个字';
  }

  @override
  String get tagAlreadyAdded => '这个标签已经添加过了';

  @override
  String get reviewHint => '写下你对这部番剧的看法';

  @override
  String get myRating => '我的评分';

  @override
  String get noTagsAdded => '还没有添加标签';

  @override
  String get editTags => '编辑标签';

  @override
  String get customTagExample => '例如：治愈';

  @override
  String get selectedTags => '已选标签';

  @override
  String get popularTags => '热门标签';

  @override
  String get none => '无';

  @override
  String get text => '文本';

  @override
  String get advancedOptions => '高级选项';

  @override
  String get ruleEditorPageTitle => '规则编辑器';

  @override
  String get ruleEditorTestRule => '测试规则';

  @override
  String get ruleEditorForm => '表单';

  @override
  String get ruleEditorNestedJson => '嵌套 JSON';

  @override
  String get ruleEditorDelimitedString => '分隔字符串';

  @override
  String get ruleEditorLegacyParser => '简易解析';

  @override
  String get ruleEditorLegacyParserDesc => '使用简易解析器而不是现代解析器';

  @override
  String get ruleEditorAdBlocker => '广告过滤';

  @override
  String get ruleEditorAdBlockerDesc => '启用 HLS 广告过滤';

  @override
  String get ruleEditorAntiCrawlerEnable => '启用反反爬虫';

  @override
  String get ruleEditorAntiCrawlerEnableDesc => '检索失败时显示验证码验证按钮而非重试';

  @override
  String get ruleEditorCaptchaType => '验证类型';

  @override
  String get ruleEditorImageCaptcha => '图片验证码';

  @override
  String get ruleEditorAutoClick => '自动点击';

  @override
  String get ruleEditorCustomScript => '自定义脚本';

  @override
  String get ruleEditorImageCaptchaDesc => '展示验证码图片，由用户手动输入';

  @override
  String get ruleEditorAutoClickDesc => '检测到验证按钮后自动模拟点击';

  @override
  String get ruleEditorCustomScriptDesc => '加载页面后执行规则内的验证脚本';

  @override
  String get ruleEditorUnknownCaptchaType => '未知验证类型';

  @override
  String get ruleEditorCaptchaDetectionMethod => '验证页检测方式';

  @override
  String get ruleEditorCaptchaDetectionMethodDesc => '优先使用该标记判断搜索响应是否为验证页';

  @override
  String get ruleEditorRegex => '正则';

  @override
  String get ruleEditorBasicInfo => '基本信息';

  @override
  String get ruleEditorBasicInfoDesc => '规则的名称、版本与站点地址';

  @override
  String get ruleEditorSearchRules => '搜索规则';

  @override
  String get ruleEditorSearchRulesDesc => '定义如何在站点内检索条目';

  @override
  String get ruleEditorEpisodeRules => '选集规则';

  @override
  String get ruleEditorEpisodeRulesDesc => '定义如何获取播放线路与剧集列表';

  @override
  String get ruleEditorAdvancedOptionsDesc => '行为、网络与反反爬虫配置';

  @override
  String get ruleEditorBehaviorSettings => '行为设置';

  @override
  String get ruleEditorNetworkSettings => '网络设置';

  @override
  String get ruleEditorAntiCrawler => '反反爬虫';

  @override
  String get ruleEditorRuleName => '规则名称';

  @override
  String get ruleEditorRuleVersion => '规则版本';

  @override
  String get ruleEditorBaseUrl => '基础地址（URL）';

  @override
  String get ruleEditorSearchRuleType => '搜索规则类型';

  @override
  String get ruleEditorEpisodeRuleType => '选集规则类型';

  @override
  String get ruleEditorSearchUrl => '搜索地址（URL）';

  @override
  String get ruleEditorSearchListXPath => '搜索结果列表（XPath）';

  @override
  String get ruleEditorItemNameXPath => '条目名称（XPath）';

  @override
  String get ruleEditorItemLinkXPath => '条目链接（XPath）';

  @override
  String get ruleEditorRoadListXPath => '播放线路列表（XPath）';

  @override
  String get ruleEditorEpisodeListXPath => '剧集列表（XPath）';

  @override
  String get ruleEditorSearchMethod => '搜索请求方法';

  @override
  String get ruleEditorSearchRequestUrl => '搜索请求地址（URL）';

  @override
  String get ruleEditorSearchHeaders => '搜索请求头（JSON）';

  @override
  String get ruleEditorSearchQuery => '搜索查询参数（JSON）';

  @override
  String get ruleEditorSearchBodyType => '搜索请求体类型';

  @override
  String get ruleEditorSearchBody => '搜索请求体（JSON）';

  @override
  String get ruleEditorSearchListPath => '搜索结果列表路径（JSONPath）';

  @override
  String get ruleEditorItemNamePath => '条目名称路径（JSONPath，相对条目）';

  @override
  String get ruleEditorItemSourcePath => '条目来源路径（JSONPath，相对条目）';

  @override
  String get ruleEditorEpisodeMethod => '选集请求方法';

  @override
  String get ruleEditorEpisodeRequestUrl => '选集请求地址（URL）';

  @override
  String get ruleEditorEpisodeHeaders => '选集请求头（JSON）';

  @override
  String get ruleEditorEpisodeQuery => '选集查询参数（JSON）';

  @override
  String get ruleEditorEpisodeBodyType => '选集请求体类型';

  @override
  String get ruleEditorEpisodeBody => '选集请求体（JSON）';

  @override
  String get ruleEditorEpisodeResponseFormat => '选集响应格式';

  @override
  String get ruleEditorRoadListPath => '播放线路列表路径（JSONPath，留空表示单线路）';

  @override
  String get ruleEditorRoadNamePath => '线路名称路径（JSONPath，相对线路）';

  @override
  String get ruleEditorEpisodeListPath => '剧集列表路径（JSONPath，相对线路）';

  @override
  String get ruleEditorEpisodeNamePath => '剧集名称路径（JSONPath，相对剧集）';

  @override
  String get ruleEditorPlaybackEntryPath => '播放入口地址路径（JSONPath，使用播放页地址模板时可留空）';

  @override
  String get ruleEditorPlaybackEntryPathHelper =>
      '从剧集对象读取交给 WebView 的地址，可以是播放页面或媒体直链。';

  @override
  String get ruleEditorRoadNamesPath => '线路名称串路径（JSONPath）';

  @override
  String get ruleEditorRoadEpisodesPath => '线路剧集串路径（JSONPath）';

  @override
  String get ruleEditorRoadSeparator => '线路分隔符';

  @override
  String get ruleEditorEpisodeSeparator => '剧集分隔符';

  @override
  String get ruleEditorFieldSeparator => '名称与地址分隔符';

  @override
  String get ruleEditorResponseVariables => '响应变量（JSON：变量名 → JSONPath）';

  @override
  String get ruleEditorPlayPageUrl => '播放页地址模板（URL，可选）';

  @override
  String get ruleEditorPlayPageUrlHelper =>
      '可用变量：@source、@episodeUrl、@roadIndex/@episodeIndex（从 0 起）、@roadNumber/@episodeNumber（从 1 起）及响应变量。';

  @override
  String get ruleEditorPlayPageQuery => '播放页查询参数（JSON）';

  @override
  String get ruleEditorPlayPageQueryHelper => '与地址模板可用变量相同，合并进最终 URL 的查询参数。';

  @override
  String get ruleEditorUserAgent => '用户代理（User-Agent）';

  @override
  String get ruleEditorPlayerDownloaderOnly => '仅用于播放器和下载器。';

  @override
  String get ruleEditorReferer => '播放请求来源（Referer）';

  @override
  String get ruleEditorCaptchaDetectionValue => '验证页检测值';

  @override
  String get ruleEditorCaptchaDetectionValueHelper =>
      '留空时使用验证码图片或验证按钮的 XPath 进行检测。';

  @override
  String get ruleEditorCaptchaImageXPath => '验证码图片（XPath）';

  @override
  String get ruleEditorCaptchaImageXPathHelper => '填写验证码图片元素的 XPath。';

  @override
  String get ruleEditorCaptchaInputXPath => '验证码输入框（XPath）';

  @override
  String get ruleEditorCaptchaInputXPathHelper => '填写验证码输入框元素的 XPath。';

  @override
  String get ruleEditorCaptchaSubmitXPath => '验证提交按钮（XPath）';

  @override
  String get ruleEditorCaptchaSubmitXPathHelper => '填写提交验证码按钮元素的 XPath。';

  @override
  String get ruleEditorVerifyButtonXPath => '验证按钮（XPath）';

  @override
  String get ruleEditorVerifyButtonXPathHelper => '填写验证按钮元素的 XPath，检测到后将自动点击。';

  @override
  String get ruleEditorCaptchaScript => '验证脚本（JavaScript）';

  @override
  String get ruleEditorCaptchaScriptHelper =>
      '可调用 KazumiCaptcha.log、clicked、done 和 fail。';

  @override
  String get install => '安装';

  @override
  String get installed => '已安装';

  @override
  String get refresh => '刷新';

  @override
  String get refreshRuleList => '刷新规则列表';

  @override
  String get sortByName => '按名称排序';

  @override
  String get sortByUpdateTime => '按更新时间排序';

  @override
  String get ruleRepositoryAccessFailed => '无法访问规则仓库';

  @override
  String get ruleRepositoryAccessFailedPlayful => '啊咧（⊙.⊙） 无法访问规则仓库';

  @override
  String get ruleRepositoryMirrorEnabled => '规则仓库镜像已启用';

  @override
  String get ruleRepositoryMirrorDisabled => '规则仓库镜像已禁用';

  @override
  String get enableRuleRepositoryMirror => '启用规则镜像';

  @override
  String get disableRuleRepositoryMirror => '禁用规则镜像';

  @override
  String get ruleRepositoryEmpty => '规则仓库中暂无规则';

  @override
  String lastUpdated(String time) {
    return '更新时间：$time';
  }

  @override
  String get invalidRuleTestParameters => '规则测试参数无效，请返回后重试。';

  @override
  String get invalidRuleEditorParameters => '规则编辑参数无效，请返回后重试。';

  @override
  String get newVersionAvailable => '发现新版本';

  @override
  String get alreadyLatestVersion => '当前已经是最新版本！';

  @override
  String get checkUpdatesFailed => '检查更新失败';

  @override
  String newVersion(String version) {
    return '发现新版本 $version';
  }

  @override
  String releaseDate(String date) {
    return '发布时间：$date';
  }

  @override
  String get selectInstallationType => '选择安装类型：';

  @override
  String get autoUpdateDisabled => '已关闭自动更新';

  @override
  String get disableAutoUpdate => '关闭自动更新';

  @override
  String get remindMeLater => '稍后提醒';

  @override
  String get viewDetails => '查看详情';

  @override
  String get updateNow => '立即更新';

  @override
  String get windowsMsixPackage => 'Windows MSIX 包';

  @override
  String get windowsPortableZip => 'Windows 便携版（ZIP）';

  @override
  String get linuxDebPackage => 'Linux DEB 包';

  @override
  String get linuxTarPackage => 'Linux TAR 包';

  @override
  String get macosDmgImage => 'macOS DMG 镜像';

  @override
  String get unknownInstallationType => '未知安装类型';

  @override
  String noDownloadLinkForType(String type) {
    return '没有找到 $type 的下载链接';
  }

  @override
  String downloadFailedWithError(String error) {
    return '下载失败：$error';
  }

  @override
  String get noSuitableDownloadLink => '没有找到合适的下载链接';

  @override
  String get downloadingUpdate => '正在下载更新';

  @override
  String get insufficientPermissionTemporaryDirectory => '权限不足，文件已保存到应用临时目录';

  @override
  String get insufficientDiskSpace => '磁盘空间不足';

  @override
  String get networkConnectionError => '网络连接错误';

  @override
  String get fileIntegrityVerificationFailed => '文件完整性验证失败，可能是网络传输错误';

  @override
  String errorDetails(String error) {
    return '错误详情：$error';
  }

  @override
  String get downloadComplete => '下载完成';

  @override
  String newVersionDownloaded(String version) {
    return '新版本 $version 已下载完成';
  }

  @override
  String get appWillExitDuringInstallation => '安装过程中应用将会退出';

  @override
  String get fileLocation => '文件位置：';

  @override
  String get installLater => '稍后安装';

  @override
  String get openFolder => '打开文件夹';

  @override
  String get installNow => '立即安装';

  @override
  String get preparingInstallAppWillExit => '准备安装更新，应用即将退出…';

  @override
  String cannotOpenInstaller(String error) {
    return '无法打开安装文件：$error';
  }

  @override
  String launchInstallerFailed(String error) {
    return '启动安装程序失败：$error';
  }

  @override
  String get fileOrDirectoryNotFound => '文件或目录不存在';

  @override
  String get fileManagerMethodUnsupported => '此平台不支持通过此方法打开文件管理器';

  @override
  String get cannotOpenFileManager => '无法打开文件管理器';

  @override
  String yearsAgo(int count) {
    return '$count 年前';
  }

  @override
  String monthsAgo(int count) {
    return '$count 个月前';
  }

  @override
  String daysAgo(int count) {
    return '$count 天前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 小时前';
  }

  @override
  String minutesAgo(int count) {
    return '$count 分钟前';
  }

  @override
  String get justNow => '刚刚';

  @override
  String get today => '今天';

  @override
  String get datePatternMonthDayTime => 'MM月DD日 hh:mm';

  @override
  String get datePatternYearMonthDayTime => 'YY年MM月DD日 hh:mm';

  @override
  String seasonAnime(int year, String season) {
    return '$year 年$season新番';
  }

  @override
  String get imageSearchFailedRetry => '图片搜索失败，请稍后重试';

  @override
  String get imageSearchUrlFailedRetry => '图片搜索失败，请检查图片地址或稍后重试';

  @override
  String get loadingPlayful => '加载中 ٩(◦`꒳´◦)۶';

  @override
  String get animeTagDaily => '日常';

  @override
  String get animeTagOriginal => '原创';

  @override
  String get animeTagSchool => '校园';

  @override
  String get animeTagComedy => '搞笑';

  @override
  String get animeTagFantasy => '奇幻';

  @override
  String get animeTagYuri => '百合';

  @override
  String get animeTagRomance => '恋爱';

  @override
  String get animeTagMystery => '悬疑';

  @override
  String get animeTagHotBlooded => '热血';

  @override
  String get animeTagHarem => '后宫';

  @override
  String get animeTagMecha => '机战';

  @override
  String get animeTagLightNovel => '轻改';

  @override
  String get animeTagIdol => '偶像';

  @override
  String get animeTagHealing => '治愈';

  @override
  String get animeTagIsekai => '异世界';

  @override
  String get ruleEditorCaptchaDetectionTextHint => '身份验证';

  @override
  String get ruleEditorCaptchaDetectionRegexHint => '身份验证|smart_verify';

  @override
  String get ruleEditorSearchUrlRequired => '搜索请求地址不能为空';

  @override
  String get ruleEditorEpisodeUrlRequired => '选集请求地址不能为空';

  @override
  String mustBeJsonObject(String label) {
    return '$label 必须是 JSON 对象';
  }

  @override
  String invalidJsonWithError(String label, String error) {
    return '$label 不是有效 JSON：$error';
  }

  @override
  String formBodyMustBeJsonObject(String label) {
    return '$label 在表单模式下必须是 JSON 对象';
  }

  @override
  String jsonPathMustStartWithDollar(String expression) {
    return 'JSONPath 必须以 \$ 开头：$expression';
  }

  @override
  String unsupportedJsonPath(String expression) {
    return '不支持的 JSONPath：$expression';
  }

  @override
  String unsupportedJsonPathSegment(String segment) {
    return '不支持的 JSONPath 片段：[$segment]';
  }

  @override
  String jsonPathMissingBracket(String expression) {
    return 'JSONPath 缺少 ]：$expression';
  }

  @override
  String jsonPathParseFailed(String expression, String error) {
    return 'JSONPath 解析失败 $expression：$error';
  }

  @override
  String apiResponseInvalidJson(String error) {
    return 'API 响应不是有效 JSON：$error';
  }

  @override
  String onlyGetPostSupported(String method) {
    return '仅支持 GET/POST，当前为 $method';
  }

  @override
  String get apiRequestUrlRequired => 'API 请求 URL 不能为空';

  @override
  String apiRequestUrlInvalid(String url) {
    return 'API 请求 URL 无效：$url';
  }

  @override
  String searchNodeMissingNameOrSource(int index) {
    return '搜索节点 $index 缺少名称或来源，已跳过';
  }

  @override
  String searchNodeParseFailed(int index, String error) {
    return '搜索节点 $index 解析失败：$error';
  }

  @override
  String chapterVariableNoMatch(String name, String path) {
    return '章节响应变量 $name 未匹配到值：$path';
  }

  @override
  String episodeNodeMissingUrl(int road, int episode) {
    return '线路 $road 的剧集节点 $episode 缺少 URL，已跳过';
  }

  @override
  String episodeNodeParseFailed(int road, int episode, String error) {
    return '线路 $road 的剧集节点 $episode 解析失败：$error';
  }

  @override
  String roadNodeNoValidEpisodes(int road) {
    return '线路节点 $road 没有有效剧集，已跳过';
  }

  @override
  String roadNodeParseFailed(int road, String error) {
    return '线路节点 $road 解析失败：$error';
  }

  @override
  String episodeEntryMissingSeparator(int road, int episode) {
    return '线路 $road 的剧集条目 $episode 缺少字段分隔符，已跳过';
  }

  @override
  String episodeEntryMissingUrl(int road, int episode) {
    return '线路 $road 的剧集条目 $episode 缺少 URL，已跳过';
  }

  @override
  String episodeEntryParseFailed(int road, int episode, String error) {
    return '线路 $road 的剧集条目 $episode 解析失败：$error';
  }

  @override
  String roadNoValidEpisodes(int road) {
    return '线路 $road 没有有效剧集，已跳过';
  }

  @override
  String playbackRouteNumber(int number) {
    return '播放线路$number';
  }

  @override
  String get playPageTemplateRequired => '播放页地址模板不能为空';

  @override
  String episodePageUrlInvalid(String url) {
    return '剧集页面 URL 无效：$url';
  }

  @override
  String get chapterSeparatorsRequired => '章节分隔符不能为空';

  @override
  String get playbackEntryOrTemplateRequired => '必须配置播放入口地址路径或播放页地址模板';

  @override
  String missingTemplateVariable(String name) {
    return '缺少模板变量 @$name';
  }

  @override
  String searchUrlInvalid(String url) {
    return '搜索 URL 无效：$url';
  }

  @override
  String chapterUrlInvalid(String url) {
    return '章节 URL 无效：$url';
  }

  @override
  String get htmlResponseHasNoRoot => 'HTML 响应没有根节点';

  @override
  String get htmlResponseParseFailed => 'HTML 响应解析失败';

  @override
  String xpathRequired(String label) {
    return '$label XPath 不能为空';
  }

  @override
  String xpathInvalid(String label, String expression) {
    return '$label XPath 无效：$expression';
  }

  @override
  String get importContentEmpty => '导入内容为空';

  @override
  String get noValidRuleImportContent => '未找到有效的 JSON 或 kazumi:// 规则链接';

  @override
  String importEntryError(int index, String error) {
    return '第 $index 条：$error';
  }

  @override
  String get ruleLinkMustBeJsonObject => '规则链接内容必须是 JSON 对象';

  @override
  String get ruleMustBeJsonOrLink => '规则必须是 JSON 对象或 kazumi:// 链接';

  @override
  String get ruleNameRequired => '规则名称不能为空';

  @override
  String get unknown => '未知';

  @override
  String get bangumiTokenUnauthorized => 'Bangumi token 未授权，请检查你的 token';

  @override
  String fetchingCollection(String type) {
    return '正在拉取$type收藏';
  }
}
