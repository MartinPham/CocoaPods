Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.4.13"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_4.4.13_afd820ada0a72adbf01c8462551e2012484d2e3e.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '3.0'}

	s.dependency 'ApplicasterSDK', '~> 4.7.0'
	s.dependency 'ApplicasterUIKit', '~> 1.4.0'
	s.dependency 'ZappPlugins', '~> 1.11.0'
	s.dependency 'ZappHelpers', '~> 1.1.0'
	s.dependency 'ZappAppConnector', '~> 1.1.0'

end
