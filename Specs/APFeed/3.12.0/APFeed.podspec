Pod::Spec.new do |s|
	s.name = "APFeed"

	# The version is replaced with the tag when running the deploy script
	s.version = "3.12.0"

	s.ios.deployment_target = "9.0"
	s.summary = "APFeed"
	s.description = "APFeed framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APFeed_Framework_3.12.0_7ec2b547eb68b0d6b2f42aa61ead1f59a163bfd2.zip"
	}

	s.vendored_frameworks = "APFeed.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'
								 }

	s.dependency "ApplicasterSDK", "= 4.24.1"
	s.dependency 'ZappHelpers', '~> 1.4.0'

end
