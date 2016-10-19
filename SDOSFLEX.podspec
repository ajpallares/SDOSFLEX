@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSFLEX'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSFLEX'
  spec.summary      = 'Librería de conexión de los frameworks de terceros. En está librería se añaden funcionalidades para facilitar el flujo de trabajo'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSFLEX.git", :branch => "feature/core" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true

  spec.subspec 'FLEX' do |s2|
    s2.source_files = 'src/Classes/SDOSFLEX.h'
    s2.subspec 'Categories' do |s3|
      s3.subspec 'UIApplication' do |s4|
	      s4.source_files = 'src/Classes/Categories/UIApplication/{*.m,*.h}'
	    end
    end
  end
  spec.dependency 'FLEX'
end