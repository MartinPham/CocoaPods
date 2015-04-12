Pod::Spec.new do |s|
  s.name         = "APFeed"
  s.version      = "1.0.0"
  s.ios.deployment_target = "7.0"
  s.summary      = "APFeed static library"
  s.description  = "A submodule which works with the Applicaster SDK."
  s.homepage     = "https://github.com"
  s.license      = { :type => 'Commercial', :text => <<-LICENSE
                        Copyright 2015
                        LICENSE
                   }
  s.author       = { "Miri Vecselboim" => "m.vecselboim@applicaster.com" }
  s.source       = { 
                     :git => 'https://github.com/applicaster/Applicaster-Feed-Static-iOS.git',
                     :tag => s.version.to_s 
                    }
  s.source_files  = "Headers/**/*.h", "libAPFeed2_Debug.a"  
  s.framework     = "Foundation"

  s.requires_arc = true
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }

end