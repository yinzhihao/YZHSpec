#
# Be sure to run `pod lib lint ZCJZSYOrganSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZCJZSYOrganSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ZCJZSYOrganSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://172.18.80.253/sdk/jzsy/jzsy-organ-ios-sdk.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yinzhihao' => 'yzh115@zcsmart.com' }
  s.source           = { :git => 'http://172.18.80.253/sdk/jzsy/jzsy-organ-ios-sdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  
  s.static_framework = true
  
  s.pod_target_xcconfig = { 'skip_validation' => true }

  s.source_files = 'ZCJZSYOrganSDK/Classes/**/*'
  
   s.resource_bundles = {
     'ZCJZSYOrganSDKResources' => ['ZCJZSYOrganSDK/Assets/**/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'YZHFactory'
  s.dependency 'Masonry'
  s.dependency 'AFNetworking'
  s.dependency 'MJExtension'
  s.dependency 'ZCCoreSDKPod'
  s.dependency 'SVProgressHUD'
  s.dependency 'Toast'
  s.dependency 'FDFullscreenPopGesture'
  s.dependency 'PQParseQRCode'
  s.dependency 'ReactiveObjC'
  
end
