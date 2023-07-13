#
# Be sure to run `pod lib lint PQParseQRCode.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PQParseQRCode'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PQParseQRCode.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://172.18.80.253/sdk/scannfc/zcs-qrcode-nfc-sdk-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yinzhihao' => 'yzh115@zcsmart.com' }
  s.source           = { :git => 'http://172.18.80.253/sdk/scannfc/zcs-qrcode-nfc-sdk-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'PQParseQRCode/PQParseQRCode/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PQParseQRCode' => ['PQParseQRCode/PQParseQRCode/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
#  s.vendored_framework = 'Framework/ZCCoreSDK.framework'
  
  s.static_framework = true
  s.dependency 'DSBridge-ZCS'
  s.dependency 'YZHCocoaLumberjack'
  s.dependency 'AFNetworking'
  s.dependency 'Masonry'
  s.dependency 'MJExtension'
  s.dependency 'GTMBase64'
  
#  s.pod_target_xcconfig  = {
#      'FRAMEWORK_SEARCH_PATHS'                => '$(inherited) ${PODS_ROOT}/**',
#      'LIBRARY_SEARCH_PATHS'                  => '$(inherited) ${PODS_ROOT}/ ${PODS_ROOT}/../',
#      'ENABLE_BITCODE'                        => 'NO',
#      'OTHER_LDFLAGS'                         => '$(inherited) -ObjC',
#      'STRINGS_FILE_OUTPUT_ENCODING'          => 'UTF-8',
#      'ONLY_ACTIVE_ARCH'                      => 'NO',
#      'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF'  => 'NO',
#      'CLANG_WARN_STRICT_PROTOTYPES'          => 'NO'
#    }

  s.dependency 'MPMessagePack'
  s.dependency 'YZHFactory'
  s.dependency 'YZHUMeng'
  s.dependency 'YZHBugly'

end
