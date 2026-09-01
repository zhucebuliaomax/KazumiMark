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
}
