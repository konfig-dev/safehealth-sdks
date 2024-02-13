Pod::Spec.new do |s|
  s.name = 'Safehealth'
  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = { :git => 'https://github.com/konfig-dev/safehealth-sdks.git', :tag => 'v1.0.0-swift' }
  s.authors = 'safehealth.me'
  s.license = 'MIT'
  s.homepage = 'https://github.com/konfig-dev/safehealth-sdks/tree/main/swift'
  s.summary = 'Safehealth Swift SDK'
  s.source_files = 'swift/Safehealth/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
