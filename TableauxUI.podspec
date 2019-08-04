#
# Be sure to run `pod lib lint TableauxUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
	s.name             = 'TableauxUI'
	s.version          = '0.0.1'
	s.summary          = 'A shorter description of TableauxUI.'
	
	s.description      = 'A longer description of the TableauxUI.'
	
	s.homepage         = 'https://github.com/defoye/TableauxUI'
	# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
	s.license          = { :type => 'MIT', :file => 'LICENSE' }
	s.author           = { 'Ernest DeFoy' => 'erniedefoy3@gmail.com' }
	s.source           = { :git => 'https://github.com/defoye/TableauxUI.git', :tag => '0.0.1' }
	# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
	 
	s.ios.deployment_target = '12.2'
	s.swift_versions = '4.2'
	
	s.source_files = 'TableauxUI/Classes/**/*'
	
	# s.resource_bundles = {
	#   'TableauxUI' => ['TableauxUI/Assets/*.png']
	# }
	
	# s.public_header_files = 'Pod/Classes/**/*.h'
	# s.frameworks = 'UIKit', 'MapKit'
	# s.dependency 'AFNetworking', '~> 2.3'
end

