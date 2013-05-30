Pod::Spec.new do |s|
  s.name         = 'UrbanAirship-iOS-SDK'
  s.version      = '1.4.0a'
  s.license      = 'BSD'
  s.platform     = :ios

  s.summary      = 'A simple way to integrate Urban Airship services into your iOS applications.'
  s.homepage     = 'https://github.com/urbanairship/ios-library'
  s.author       = { 'Urban Airship' => 'support@urbanairship.com' }
  s.source       = { :git => 'https://github.com/garthex/ios-library.git', :commit => '7168954974270c89e1e02fa9b86a723edb44ab9b', :branch => 'personal_pod' }

  # Airship ships both UA-prefixed ASI and SBJson, as well as un-prefixed
  # versions that are no longer used in the .xcodeproj.
  s.source_files = 'Airship/**/*.{h,m,c}'
  s.exclude_files = '**/asi-http-request/*', '**/json-framework/*', '**/google-toolbox-for-mac/*', '**/ZipFile-OC/*', '**/Reachability/*'

  s.libraries    = 'z', 'sqlite3.0'
  s.frameworks   = 'CFNetwork', 'CoreGraphics', 'Foundation', 'MobileCoreServices',
                   'Security', 'SystemConfiguration', 'UIKit', 'CoreTelephony',
                   'StoreKit', 'CoreLocation', 'MapKit', 'AudioToolbox', 'MessageUI'
end
