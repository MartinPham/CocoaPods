Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "2.3.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_2.3.0_18bc91a2e32311ef62b5d09f341e1bc9913d2ed5.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.1',
								'ENABLE_BITCODE' => 'YES'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
	s.static_framework = true
	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins', '~> 4.5.1'
end
