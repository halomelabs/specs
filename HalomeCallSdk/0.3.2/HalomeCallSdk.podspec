Pod::Spec.new do |s|
  s.name             = 'HalomeCallSdk'
  s.version          = '0.3.2'
  s.summary          = 'Call SDK for ios '

  s.description      = <<-DESC
Halome call sdk.
                       DESC

  s.homepage         = 'https://halome.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :http => 'https://opensource.org/licenses/MIT' }
  s.author           = { 'Halome' => 'halome.com' }
  s.source           = { :http => 'https://halome.dev/dist/ios/0.3/HalomeCallSdk-0.3.2.xcframework.zip' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.xcconfig = {
 }

  s.vendored_frameworks = "HalomeCallSdk.xcframework"
  # s.source_files = 'Pods/Starscream/Sources/Transport/*.swift','Pods/Starscream/Sources/Starscream/*.swift','Pods/Starscream/Sources/Server/*.swift','Pods/Starscream/Sources/Compression/*.swift','Pods/Starscream/Sources/DataBytes/*.swift','Pods/Starscream/Sources/Engine/*.swift','Pods/Starscream/Sources/Framer/*.swift','Pods/Starscream/Sources/Security/*.swift'
  s.dependency 'Starscream', '~> 4.0.0'
  s.dependency 'CocoaLumberjack/Swift', '3.8.0'
  s.subspec  'WebRTC' do |webrtc|
  webrtc.name = "WebRTC"
    webrtc.vendored_frameworks = "WebRTC.xcframework"
  end
  
end