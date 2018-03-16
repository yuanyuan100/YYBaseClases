#
# Be sure to run `pod lib lint YYBaseClases.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YYBaseClases'
  s.version          = '0.1.0'
  s.summary          = 'A short description of YYBaseClases.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Yvan.Peng/YYBaseClases'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yvan.Peng' => '469092943@qq.com' }
  s.source           = { :git => 'https://github.com/Yvan.Peng/YYBaseClases.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.prefix_header_contents = '#import <UIKit/UIKit.h>', '#import <Foundation/Foundation.h>'
  s.prefix_header_file = 'YYBaseClases/Classes/YYBasePrefixHeader.pch'
  s.exclude_files = 'YYBaseClases/Classes/YYBasePrefixHeader.pch'

  s.source_files = 'YYBaseClases/Classes/**/*.{h,m}'
  s.public_header_files = 'YYBaseClases/Classes/**/*.h'
  
  # s.resource_bundles = {
  #   'YYBaseClases' => ['YYBaseClases/Assets/*.png']
  # }


  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'YYKit'
end
