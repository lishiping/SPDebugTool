Pod::Spec.new do |s|
  s.name                = "SPDebugTool"
  s.version             = "0.2.1"
  s.summary             = "网络cpu内存延迟崩溃沙盒日志等调试工具"
  s.homepage            = "https://github.com/lishiping/SPDebugTool"
  s.license             = "MIT"
  s.author              = { "lishiping" => "83118274@qq.com" }
  s.platform            = :ios, "8.0"
  s.source       = { :git => "https://github.com/lishiping/SPDebugTool.git", :tag => s.version}
  s.requires_arc        = true

  s.subspec 'Network' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Network/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Network/**/*.{h,m}"
    ss.frameworks               = "SystemConfiguration", "CoreTelephony"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_NETWORK=1'}
    ss.dependency                 "SPDebugTool/Storage"
 end

  s.subspec 'Log' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Log/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Log/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_LOG=1'}
    ss.dependency                 "SPDebugTool/Storage"
  end
  
  s.subspec 'Crash' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Crash/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Crash/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDebugTool_CRASH=1'}
    ss.dependency                 "SPDebugTool/Storage"
  end

  s.subspec 'AppInfo' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/AppInfo/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/AppInfo/**/*.{h,m}"
    ss.frameworks               = "SystemConfiguration"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_APP_INFO=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'Sandbox' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Sandbox/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Sandbox/**/*.{h,m}"
    ss.frameworks               = "QuickLook", "WebKit", "AVKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_SANDBOX=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'Screenshot' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Screenshot/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Screenshot/**/*.{h,m}"
    ss.frameworks               = "Photos"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_SCREENSHOT=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'Hierarchy' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Hierarchy/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Hierarchy/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_HIERARCHY=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'Magnifier' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Magnifier/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Magnifier/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_MAGNIFIER=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'Ruler' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Ruler/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Ruler/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_RULER=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'WidgetBorder' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/WidgetBorder/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/WidgetBorder/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_WIDGET_BORDER=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'Html' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Html/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Html/**/*.{h,m}"
    ss.frameworks               = "WebKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_HTML=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'Location' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/Location/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/Location/**/*.{h,m}"
    ss.frameworks               = "CoreLocation", "MapKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_LOCATION=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  s.subspec 'ShortCut' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Component/ShortCut/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Component/ShortCut/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SPDEBUGTOOL_IOS_SHORT_CUT=1'}
    ss.dependency                 "SPDebugTool/Core"
  end
  
  # Primary
  s.subspec 'Storage' do |ss|
    ss.public_header_files      = "SPDebugTool/Core/Storage/**/*.h"
    ss.source_files             = "SPDebugTool/Core/Storage/**/*.{h,m}"
    ss.dependency                 "SPDebugTool/Core"
    ss.dependency                 "FMDB", "~> 2.0"
  end
  
  # Primary
  s.subspec 'Core' do |ss|
    ss.public_header_files      = "SPDebugTool/LLDebug.h", "SPDebugTool/DebugTool/*.h", "SPDebugTool/Core/Others/**/*.h"
    ss.source_files             = "SPDebugTool/LLDebug.h", "SPDebugTool/DebugTool/*.{h,m}", "SPDebugTool/Core/Others/**/*.{h,m}"
    ss.resources                = "SPDebugTool/Core/Others/**/*.{xib,storyboard,bundle}"
  end
  
end
