Pod::Spec.new do |s|
	s.name = "ZappRootPlugins"
	s.version = "4.0.2"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappRoot"
	s.description = "ZappRoot"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPlugins_Framework_4.0.2_adfa663d4fafcac4b69e3ce1405c528ff0f117fc.zip"
  }

	s.requires_arc = true
	s.default_subspec = 'Basic'
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.1'
						 }

	s.subspec 'Basic' do |basic|
		basic.vendored_frameworks = 'ZappRootPluginBase.framework'
		basic.dependency 'ApplicasterSDK'
		basic.dependency 'ZappPlugins'
  end

 	s.subspec 'NativeTabBar' do |nativeTabBar|
		nativeTabBar.vendored_frameworks = 'ZappRootPluginNativeTabBar.framework'

		nativeTabBar.dependency 'ComponentsSDK'
		nativeTabBar.dependency 'UIViewAppearanceSwift'
		nativeTabBar.dependency 'ZappLayoutsComponentsSDK'
	 	nativeTabBar.dependency 'ZappAppConnector'
		nativeTabBar.dependency 'ZappRootPlugins/Basic'
 	end

	s.subspec 'TwoLevelRNMenu' do |twoLevelRNMenu|
	 twoLevelRNMenu.vendored_frameworks = 'ZappRootPlugin2LevelRNMenu.framework'
	 twoLevelRNMenu.dependency 'ZappLayoutsComponentsSDK'
	 twoLevelRNMenu.dependency 'ComponentsSDK'
	 twoLevelRNMenu.dependency 'ZappReactNativeAdapter/Default'
	 twoLevelRNMenu.dependency 'yoga'
	 twoLevelRNMenu.dependency 'React'
	 twoLevelRNMenu.dependency 'DoubleConversion'
	 twoLevelRNMenu.dependency 'GLog'
	 twoLevelRNMenu.dependency 'Folly'
	 twoLevelRNMenu.dependency 'ZappRootPlugins/Basic'

	end
end
