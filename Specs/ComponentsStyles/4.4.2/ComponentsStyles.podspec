Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "4.4.2"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_4.4.2_26d17358e88e82ac032e1500d606f06f360423a8.zip"
	}

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								'OTHER_SWIFT_FLAGS' => '$(inherited) -DCOMPONENTS_STYLE=1',
								'SWIFT_VERSION' => '3.2'
	}
end
