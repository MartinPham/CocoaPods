Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "8.1.2"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_8.1.2_a2d5506368aec56d4f62e8563d49b702a77a6d37.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '5.1',
								'OTHER_CFLAGS'  => '-fembed-bitcode',
								'ENABLE_BITCODE' => 'YES'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
	s.static_framework = true
	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins'
end
