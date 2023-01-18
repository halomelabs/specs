Pod::Spec.new do |s|
  s.name             = 'HalomeCallSdk'
  s.version          = '0.1.54'
  s.summary          = 'Call SDK for ios '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://halome.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :http => 'https://opensource.org/licenses/MIT' }
  s.author           = { 'Halome' => 'halome.com' }#TODO: fix this
  s.source           = { :http => 'https://halome.dev/dist/HalomeCallSdk-2023-01-18T07-59-34.xcframework.zip' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.xcconfig = {
 }
#  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }#https://github.com/CocoaPods/CocoaPods/issues/10204#issuecomment-991980184

  # s.source_files = 'HaloCallSDK/Services/*.swift','HaloCallSDK/DTO/*.swift','HaloCallSDK/Services/WebSocketProvider/*.swift','HaloCallSDK/*.{h,swift}'
  # s.source_files = "HaloCallSDK/*.{h}"
  #  s.resource_bundles = {
  #    'Resources' => ['HalomeCallSdk/*.xcassets'] #https://stackoverflow.com/questions/50625036/use-resource-bundles-in-cocoapods
  #  }

  # s.public_header_files = 'Pod/Classes/**/*.h'

  s.vendored_frameworks = "HalomeCallSdk.xcframework"
  # s.source_files = 'Pods/Starscream/Sources/Transport/*.swift','Pods/Starscream/Sources/Starscream/*.swift','Pods/Starscream/Sources/Server/*.swift','Pods/Starscream/Sources/Compression/*.swift','Pods/Starscream/Sources/DataBytes/*.swift','Pods/Starscream/Sources/Engine/*.swift','Pods/Starscream/Sources/Framer/*.swift','Pods/Starscream/Sources/Security/*.swift'
  s.dependency 'Starscream'
  s.dependency 'CocoaLumberjack/Swift'
  s.dependency 'Kingfisher', '~> 6.3.1'
  s.subspec  'WebRTC' do |webrtc|
  webrtc.name = "WebRTC"
    webrtc.vendored_frameworks = "WebRTC.xcframework"
  end
  
end
