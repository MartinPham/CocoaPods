Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "2.1.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_2.1.0_7ab932463d01a6a0f47097d9c2d6a6a926af5c5b.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'
	
	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'}

end
