#
#  Be sure to run `pod spec lint CLExtensions+Rx.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name              = "CLExtensions+Localize"
  s.version           = "1.1.4"
  s.summary           = "Localize of CLExtensions."
  s.homepage          = "https://github.com/CainLuo/CLExtensions"
  s.license           = { :type => "MIT", :file => "LICENSE" }
  s.author            = { "cainluo" => "350116542@qq.com" }
  s.source            = { :git => "https://github.com/CainLuo/CLExtensions.git", :tag => "#{s.version}" }
  s.documentation_url = 'https://github.com/CainLuo/CLExtensions'

  s.source_files = 'CLExtensions+Localize/*.swift'

  s.ios.deployment_target = '10.0'

  s.swift_versions = ['5.0', '5.1', '5.2']

  s.dependency 'Localize-Swift'
end
