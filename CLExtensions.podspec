#
#  Be sure to run `pod spec lint CLExtensions.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "CLExtensions"
  spec.version      = "1.0.0"
  spec.summary      = "iOS of CLExtensions."
  spec.homepage     = "https://github.com/CainLuo/CLExtensions"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "CainLuo" => "350116542@qq.com" }
  spec.platform     = :ios, '9.0'
  spec.source       = { :git => "https://github.com/CainLuo/CLExtensions.git", :tag => "#{spec.version}" }
  spec.source_files = "Extensions/*.swift"

  spec.swift_versions = ['5.0', '5.1']
end
