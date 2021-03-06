Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "5.0.1"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_5.0.1_42c71a0984033bb28b2f7717a13a3b1498ac0278.zip"
	}

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								'OTHER_SWIFT_FLAGS' => '$(inherited) "-D" "COMPONENTS_STYLE"',
								'SWIFT_VERSION' => '4.1'
	}
end
