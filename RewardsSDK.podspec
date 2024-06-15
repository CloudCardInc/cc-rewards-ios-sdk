# #
# #  Be sure to run `pod spec lint RewardSDK.podspec' to ensure this is a
# #  valid spec and to remove all comments including this before submitting the spec.
# #
# #  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
# #  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
# #

Pod::Spec.new do |s|
  s.name = 'RewardsSDK'
  s.version = '1.2.0'
  s.license = 'MIT'
  s.summary = 'RewardsSDK by CloudCard'
  s.authors = { 'CloudCard' => 'apps@cloudcardsystems.com' }
  s.homepage = "https://www.cloudcardinc.com/"
  s.source = { :git => 'https://github.com/CloudCardInc/cc-rewards-ios-sdk.git', :tag => s.version }

  s.ios.deployment_target = '13.0'

  s.swift_versions = ['5']

  s.ios.vendored_frameworks = 'RewardsSDK.xcframework'

  s.dependency 'PoweredByDosh', '~> 3.0.2'

end
