#
# Be sure to run `pod lib lint DynoJSON.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DynoJSON'
  s.version          = '0.1.0'
  s.summary          = 'JSON parsing using dynamicMemberLookup feature.'
  s.swift_version    = '4.2'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  JSON parsing using dynamicMemberLookup feature
  With this utility you can easily get needed value from JSON.
  All that you need explicity set value type.
                       DESC

  s.homepage         = 'https://github.com/Vergunof/DynamicJSON'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrew Vergunov' => 'andrewvergunov@gmail.com' }
  s.source           = { :git => 'https://github.com/Vergunof/DynamicJSON.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DynoJSON/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DynoJSON' => ['DynoJSON/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
