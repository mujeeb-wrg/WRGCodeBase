#
# Be sure to run `pod lib lint WRGCodeBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WRGCodeBase'
  s.version          = '0.1.8'
  s.summary          = 'Boilerplate code for project setup'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    WRGCodeBase is a collection of code which is generic to all the projects.
                       DESC

  s.homepage         = 'https://github.com/wrg-mujeeb/WRGCodeBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mujeeb Rahman O' => 'mujeeb@whiterabbit.group' }
  s.source           = { :git => 'https://github.com/wrg-mujeeb/WRGCodeBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'WRGCodeBase/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WRGCodeBase' => ['WRGCodeBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
