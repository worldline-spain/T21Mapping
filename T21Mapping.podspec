Pod::Spec.new do |s|
  s.name			= "T21Mapping"
  s.version			= "1.2.2"
  s.summary			= "T21Mapping is a simple class which wraps a generic mapping function."
  s.author			= "Eloi Guzman Ceron"
  s.platform			= :ios
  s.ios.deployment_target	= "8.0"
  s.source       		= { :git => "https://github.com/worldline-spain/T21Mapping.git", :tag => "1.2.1" }
  s.source_files  		= "Classes", "src/**/*.{swift}"
  s.framework  			= "UIKit"
  s.requires_arc 		= true
  s.homepage			= "https://github.com/worldline-spain/T21Mapping"
  s.license 			= "https://github.com/worldline-spain/T21Mapping/blob/master/LICENSE"
  s.swift_version 		= '4.2'
end
