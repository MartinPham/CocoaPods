Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "7.1.1"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_7.1.1_9c3327190a5eeff5c43506099a2d62c54bfe0ee7.zip"
  }

	s.frameworks = 'AVFoundation'
	s.vendored_frameworks = 'ZappPlugins.framework'
	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.2',
							 	 'ENABLE_TESTABILITY' => 'YES',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

end
