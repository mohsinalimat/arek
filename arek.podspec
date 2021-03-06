Pod::Spec.new do |s|
  s.name             = 'arek'
  s.version          = '0.9.1'
  s.summary          = 'AREK is a clean and easy to use wrapper over any kind of iOS permission.'
  s.homepage         = 'https://github.com/ennioma/arek'
  s.license          = { :type => 'MIT', :file => 'LICENSE'}
  s.author           = { 'Ennio Masi' => 'ennio.masi@gmail.com' }
  s.source           = { :git => 'https://github.com/ennioma/arek.git', :tag => s.version.to_s }
  s.social_media_url   = "https://twitter.com/ennioma"
  s.ios.deployment_target = '9.0'
  s.source_files = 'arek/Classes/**/*', 'arek/Classes/Core/**/*', 'arek/Classes/Permissions/**/*'

  s.subspec 'Core' do |ss|
    ss.source_files = 'arek/Classes/Core/**/*.swift'
  end

  s.subspec 'Camera' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekCamera.swift'
    ss.frameworks = 'AVFoundation'
  end

  s.subspec 'CloudKit' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekCloudKit.swift'
    ss.frameworks = 'CloudKit'
  end

  s.subspec 'Contacts' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekContacts.swift'
    ss.frameworks = 'AddressBook'
  end

  s.subspec 'Events' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekEvents.swift'
    ss.frameworks = 'EventKit'
  end

  s.subspec 'Health' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekHealth.swift'
    ss.frameworks = 'HealthKit'
  end

  s.subspec 'Location' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/Location/*.swift'
    ss.frameworks = 'CoreLocation'
  end

  s.subspec 'MediaLibrary' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekMediaLibrary.swift'
    ss.frameworks = 'MediaPlayer'
  end

  s.subspec 'Microphone' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekMicrophone.swift'
    ss.frameworks = 'AVFoundation'
  end

  s.subspec 'Notifications' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekNotifications.swift'
  end

  s.subspec 'Photos' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekPhoto.swift'
    ss.frameworks = 'AssetsLibrary'
  end

  s.subspec 'Reminders' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekReminders.swift'
    ss.frameworks = 'EventKit'
  end

  s.subspec 'SpeechRecognizer' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'arek/Classes/Permissions/ArekSpeechRecognizer.swift'
    ss.frameworks = 'Speech'
    ss.ios.deployment_target = '9.0'
  end

end
