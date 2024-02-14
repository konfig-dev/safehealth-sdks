Pod::Spec.new do |s|
  s.name = 'SafehealthPush'
  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.1.0'
  s.source = { :git => 'https://github.com/konfig-dev/safehealth-sdks.git', :tag => 'v0.1.0-swift' }
  s.authors = 'safehealth.me'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/konfig-dev/safehealth-sdks/tree/main/swift'
  s.summary = 'SafehealthPush Swift SDK'
  s.source_files = 'swift/SafehealthPush/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
