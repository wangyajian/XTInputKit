Pod::Spec.new do |s|
  s.name         = "XTInputKit"
  s.version      = "0.0.4"
  s.summary      = "一些常用的iOS开发代码及扩展集合，例如打印日志的工具XTILoger，用16进制取颜色···"
  s.description  = <<-DESC
                    平时开发积累的代码整合起来的。包括且不限于UINavigationController、UIViewController、UITabBarController的扩展，以及String、Date、DispatchQueue的扩展。
                   DESC
  s.homepage     = "https://github.com/xt-input/XTInputKit"
  s.license      = "MIT"
  s.authors      = {"input" => "input@07coding.com"}
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/xt-input/XTInputKit.git",
                     :tag => s.version }

  s.subspec 'Common' do |ss|
  ss.source_files = 'Source/Common/*{h,m}'
  end

  s.subspec 'ObjC' do |ss|
  ss.source_files = 'Source/ObjC/*.{h,m}'
  ss.dependency 'XTInputKit/Common'
  end

  s.subspec 'XTILoger' do |ss|
  ss.source_files = 'Source/Swift/XTILoger/*.swift'
  ss.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0'}
  end

  s.subspec 'Swift' do |ss|
  ss.source_files = 'Source/Swift/{Class,Extension}/**/*.swift'
  ss.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0'}
  ss.dependency 'XTInputKit/XTILoger'
  ss.dependency 'XTInputKit/Common'
  end

  s.requires_arc  = true
end
