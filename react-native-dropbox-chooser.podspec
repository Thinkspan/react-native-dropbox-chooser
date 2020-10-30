require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "10.0" }

  s.source       = { :git => "https://github.com/tinycreative/react-native-dropbox-chooser.git", :branch => "master" }
  s.source_files  = "RNDropboxChooser/RNDropboxChooser/*.{h,m}"

  s.dependency 'React'
  s.dependency 'Dropbox-iOS-Dropins-SDK', '1.2.1'
end
