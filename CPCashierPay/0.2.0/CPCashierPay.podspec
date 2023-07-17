#
# Be sure to run `pod lib lint CPCashierPay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CPCashierPay'
  s.version          = '0.2.0'
  s.summary          = 'A short description of CPCashierPay.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://172.18.80.253/sdk/cashier/zcs-cashier-pay-sdk-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yinzhihao' => 'yzh115@zcsmart.com' }
  s.source           = { :git => 'http://172.18.80.253/sdk/cashier/zcs-cashier-pay-sdk-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'CPCashierPay/CPCashierPay/Classes/**/*'
  
  s.static_framework = true
  
  s.vendored_framework = 'Framework/*.framework'
  # ZCCoreSDK所需的依赖
  s.dependency 'AFNetworking', '~> 4.0.0'
  s.dependency 'MJExtension', '~> 3.4.1'
  s.dependency 'GTMBase64', '~> 1.0.1'
  s.dependency 'DSBridge-ZCS', '~> 3.2.13'
  s.dependency 'ZCCoreSDKPod', '~> 0.1.0'
  
  s.pod_target_xcconfig = { 'skip_validation' => true }
  
  # s.resource_bundles = {
  #   'CPCashierPay' => ['CPCashierPay/CPCashierPay/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
