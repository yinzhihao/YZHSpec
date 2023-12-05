#
# Be sure to run `pod lib lint ZCCoreSDKPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZCCoreSDKPod'
  s.version          = '0.1.3'
  s.summary          = 'A short description of ZCCoreSDKPod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'ZCCoreSDKPod库'

  s.homepage         = 'http://172.18.80.22/iOS/zccorepod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yzh115' => 'yzh115@zcsmart.com' }
  s.source           = { :git => 'http://172.18.80.22/iOS/zccorepod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  # s.source_files = 'ZCCoreSDKPod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZCCoreSDKPod' => ['ZCCoreSDKPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.vendored_frameworks = ['Framework/ZCCoreSDK.framework'] #自己的framework在工程中的路径
  
  s.resource_bundles = {
      'ZCCoreSDKResources' => ['ZCCoreSDKPod/Assets/**/*']
  }#资源文件的路径，会在pod中创建“Resources”的文件夹

  s.dependency 'AFNetworking'
  s.dependency 'GTMBase64'
  s.dependency 'MJExtension'
  s.dependency 'MPMessagePack'
  s.dependency 'YZHFactory', '~> 1.1.2'
  s.dependency 'DSBridge-ZCS/ApiFactory', '~> 3.2.13'
  s.dependency 'YZHCocoaLumberjack', '~> 0.2.1'
  s.dependency 'YZHUMeng', '~> 0.2.0'
  s.dependency 'YZHBugly', '~> 0.1.1'
  
  s.pod_target_xcconfig = { 'skip_validation' => true } #跳过验证模拟器

end
