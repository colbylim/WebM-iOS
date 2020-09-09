#
# Be sure to run `pod lib lint WebM-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  ver = "1.0.0"
  sha1 = "166324234bf99e7d3d4e8a370855a8ff9dafe055"
  
  s.name             = 'WebM-iOS'
  s.version          = ver
  s.summary          = 'A short description of WebM-iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/colbylim/WebM-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'colbylim' => 'colbylim84@gmail.com' }
  s.source           = { :git => 'https://github.com/colbylim/WebM-iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source       = { :http => "https://github.com/colbylim/WebM-iOS/releases/download/" + ver + "/WebM-iOS.zip",
                      :sha1 => sha1,
                      :flatten => true }

   s.vendored_frameworks = "VPX.framework"
end
