#
#  Be sure to run `pod s lint CLExtensions.pods' to ensure this is a
#  valid s and to remove all comments including this before submitting the s.
#
#  To learn more about Pods attributes see https://guides.cocoapods.org/syntax/pods.html
#  To see working Podss in the CocoaPods repo see https://github.com/CocoaPods/ss/
#

Pod::Spec.new do |s|
  s.name     = "CLExtensions"
  s.version  = "1.1.0"
  s.summary  = "iOS of CLExtensions."
  s.homepage = "https://github.com/CainLuo/CLExtensions"
  s.license  = { :type => "MIT", :file => "LICENSE" }
  s.author   = { "CainLuo" => "350116542@qq.com" }
  s.source   = { :git => "https://github.com/CainLuo/CLExtensions.git", :tag => s.version }
  s.documentation_url = 'https://github.com/CainLuo/CLExtensions'

  s.source_files = 'Source/*.swift'

  s.ios.deployment_target = '10.0'
  
  s.swift_versions = ['5.0', '5.1']
end
