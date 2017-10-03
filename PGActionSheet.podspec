Pod::Spec.new do |s|
  s.name         = "PGActionSheet"
  s.version      = "1.0"
  s.summary      = "扁平化的ActionSheet。"
  s.homepage     = "https://github.com/xiaozhuxiong121/PGActionSheet"
  s.license      = "Apache License 2.0"
  s.author       = { "piggybear" => "piggybear_net@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/xiaozhuxiong121/PGActionSheet.git", :tag => s.version }
  s.source_files = "PGActionSheet", "PGActionSheet/**/*.swift"
  s.frameworks   = "UIKit"
  s.requires_arc = true
end
 
