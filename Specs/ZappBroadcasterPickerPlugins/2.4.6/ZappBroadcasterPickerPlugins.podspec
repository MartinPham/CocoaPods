Pod::Spec.new do |s|
  s.name             = "ZappBroadcasterPickerPlugins"
  s.version          = '2.4.6'
  s.summary          = "ZappBroadcasterPickerPlugins"
  s.description      = <<-DESC
                        ZappBroadcasterPickerPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappBroadcasterPickerPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPlugins_Framework_2.4.6_8d038c3b62cd426c876940a9c371eedfb036a599.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs
  s.xcconfig =  {
                'SWIFT_VERSION' => '4.0'
              }

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
    basic.dependency 'ZappHelpers'
    basic.dependency 'ZappAppConnector'
    basic.dependency 'AFNetworking', '~> 3.1.0'
    basic.dependency 'ApplicasterSDK'
    basic.vendored_frameworks = 'ZappBroadcasterPickerPluginBase.framework'
  end

  #--------------SUBSPECS--------------
  s.subspec 'GermanCountryIP' do |germanCountryIP|
    germanCountryIP.vendored_frameworks = 'ZappBroadcasterPickerPluginByGermanCountryIP.framework'
    germanCountryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }
    germanCountryIP.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'CountryIP' do |countryIP|
    countryIP.vendored_frameworks = 'ZappBroadcasterPickerPluginByCountryIP.framework'
    countryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }
    countryIP.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'Kwese' do |kwese|
    kwese.vendored_frameworks = 'ZappBroadcasterPickerPluginForKwese.framework'
    kwese.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    kwese.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'Localization' do |localization|
    localization.vendored_frameworks = 'ZappBroadcasterPickerPluginByLocalization.framework'
    localization.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }
    localization.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'LibrarySelector' do |librarySelector|
    librarySelector.vendored_frameworks = 'ZappBroadcasterPickerPluginLibrarySelector.framework'
    librarySelector.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }
    librarySelector.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end
end
