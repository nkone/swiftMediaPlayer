project 'MediaPlayer.xcodeproj'

# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MediaPlayer' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'YoutubePlayerView'
  # Pods for MediaPlayer

  post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.name == 'YoutubePlayerView'
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.1'
      end
    end
  end
end
end
