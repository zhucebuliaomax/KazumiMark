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
}
