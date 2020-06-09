Pod::Spec.new do |s|
  s.name                = "PhenixSdk"
  s.version             = "2019.2.2"
  s.summary             = "Phenix Real-Time Video SDK."
  s.homepage            = "https://phenixrts.com"
  s.license             = ''
  s.author              = { "Phenix" => "info@phenixrts.com" }
  s.source              = { :http => 'https://storage.googleapis.com/phenixsdk/PhenixSdk.framework.zip' }
  s.vendored_frameworks = "PhenixSdk.framework"
  s.platform            = :ios, '9.0'
  s.requires_arc        = true
  s.frameworks          = 'UIKit','Foundation','CoreFoundation'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO',
                  'SWIFT_VERSION' => '4.1'
                }
end
