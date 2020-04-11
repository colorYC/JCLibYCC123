Pod::Spec.new do |s|
  s.name         = "JCLibYCC123"
  s.version      = "1.20.0"
  s.summary      = "A short description of JCSDKLib."
  s.description  = "sdfdf"
  s.homepage     = "http://EXAMPLE/sdk"
  s.license      = "MIT"
  s.author             = { "于彩彩" => "color.yu@juphoon.com.cn" }

  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source       = { :http => 'http://developer.juphoon.com/portal/upload/sdk/JuphoonSDK_iOS_1.20.zip'}

  s.subspec 'include' do |include|

      include.subspec 'grape' do |grape|
      grape.source_files = 'JC-SDK-iOS-V1_20_1/include/grape/*.h'

      include.subspec 'lemon' do |lemon|
      lemon.source_files = 'JC-SDK-iOS-V1_20_1/include/lemon/*.h'
      

          lemon.subspec 'mtc' do |mtc|
          mtc.source_files = 'JC-SDK-iOS-V1_20_1/include/lemon/mtc/*.h'


  include.subspec 'avatar' do |avatar|
  
      avatar.subspec 'zos' do |zos|
      zos.source_files = 'JC-SDK-iOS-V1_20_1/include/avatar/zos/*.h'

          zos.subspec 'os' do |os|
              os.subspec 'os' do |ios|
                  ios.source_files = 'JC-SDK-iOS-V1_20_1/include/avatar/zos/os/ios/*.h'
              

  end
  end
  end
  end
  end
  end
  end
  end

  s.vendored_frameworks  = "JC-SDK-iOS-V1_20_1/JCSDKOC.framework"
  s.vendored_libraries = "JC-SDK-iOS-V1_20_1/lib/ios/libmtc.a", "JC-SDK-iOS-V1_20_1/lib/ios/libzmf.a"
  s.frameworks = 'AVFoundation', 'Security', 'AudioToolbox', 'CoreMedia', 'AssetsLibrary', 'CoreVideo', 'CFNetwork', 'CoreMotion', 'GLKit', 'ReplayKit', 'PushKit', 'SystemConfiguration', 'VideoToolbox'
  s.libraries = 'c++', 'resolv', 'z'
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/include" }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7 armv7s arm64e' }

  end
