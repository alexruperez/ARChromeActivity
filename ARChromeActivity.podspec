Pod::Spec.new do |spec|
  spec.name         = 'ARChromeActivity'
  spec.version      = '0.0.1'
  spec.license      = 'MIT'
  spec.summary      = 'A UIActivity subclass that opens URLs in Google Chrome.'
  spec.homepage     = 'https://github.com/alexruperez/ARChromeActivity'
  spec.author       = 'Alex Ruperez'
  spec.platform     = :ios, '6.0'
  spec.source       = { :git => 'https://github.com/alexruperez/ARChromeActivity.git', :tag => 'v0.0.1' }
  spec.source_files = 'ARChromeActivity/*.{h,m}'
  spec.resources    = 'ARChromeActivity/*.{png,lproj}'
  spec.requires_arc = true
end