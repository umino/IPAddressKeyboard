#
# Be sure to run `pod lib lint IPAddressKeyboard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IPAddressKeyboard'
  s.version          = '0.1.0'
  s.summary          = 'iPhone/iPad Custom keyboard for IP Address only.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
IPAddress keyboard is a library to display a keyboard that specializes in the input of the only IP Address for UITextField / UITextView.
                       DESC

  s.homepage         = 'https://github.com/umino/IPAddressKeyboard'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'APL2', :file => 'LICENSE' }
  s.author           = { '戸嶋誠' => 'toshima@abt.jp' }
  s.source           = { :git => 'https://github.com/umino/IPAddressKeyboard.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'IPAddressKeyboard/Classes/**/*'
  
  s.resource_bundles = {
    'IPAddressKeyboard' => ['IPAddressKeyboard/Assets/*.*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
