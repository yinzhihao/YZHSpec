#
# Be sure to run `pod lib lint PQParseQRCode.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PQParseQRCode'
  s.version          = '0.3.2'
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
  
  s.static_framework = true
  
  s.pod_target_xcconfig = { 'skip_validation' => true }
  
  s.subspec 'Common' do |ss|
    
    ss.dependency 'DSBridge-ZCS', '~> 3.2.13'
    ss.dependency 'YZHCocoaLumberjack', '~> 0.2.1'
    ss.dependency 'Masonry', '~> 1.1.0'
    ss.dependency 'YZHFactory', '~> 1.1.2'
    ss.dependency 'MJExtension', '~> 3.4.1'
    ss.dependency 'GTMBase64', '~> 1.0.1'
    ss.dependency 'ZCCoreSDKPod', '~> 0.1.0'
    
    ss.source_files = 'PQParseQRCode/PQParseQRCode/Classes/PQParseQRCode.h', 'PQParseQRCode/PQParseQRCode/Classes/Classes/Common/**/*'
  end
  
  s.subspec 'QRCode' do |ss|
    ss.dependency 'PQParseQRCode/Common'
    ss.source_files = 'PQParseQRCode/PQParseQRCode/Classes/Classes/QRCode/**/*'
    
  end
  
  s.subspec 'NFC' do |ss|
    ss.dependency 'PQParseQRCode/Common'
    ss.source_files = 'PQParseQRCode/PQParseQRCode/Classes/Classes/NFC/**/*'
    
    ss.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'PQNFC=1' }
    
  end
  
  # s.resource_bundles = {
  #   'PQParseQRCode' => ['PQParseQRCode/PQParseQRCode/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
#  s.vendored_framework = 'Framework/*.framework'
  
  
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

end
