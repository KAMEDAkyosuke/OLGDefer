#
# Be sure to run `pod lib lint OLGDefer.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "OLGDefer"
  s.version          = "1.0.0"
  s.summary          = "like golang defer statement."
  s.homepage         = "https://github.com/KAMEDAkyosuke/OLGDefer"
  s.license          = 'MIT'
  s.author           = { "KAMEDAkyosuke" => "organlounge@me.com" }
  s.source           = { :git => "https://github.com/KAMEDAkyosuke/OLGDefer.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/gemmbu'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
end
