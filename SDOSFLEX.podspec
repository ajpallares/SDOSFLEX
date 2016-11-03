@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSFLEX'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSFLEX'
  spec.summary      = 'Librería que muestra la barra de herramientas de la librería FLEX al agitar el dispositivo'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSFLEX.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'FLEX' do |s2|
    s2.source_files = 'src/Classes/SDOSFLEX.h'
    s2.subspec 'Categories' do |s3|
      s3.subspec 'UIApplication' do |s4|
	      s4.source_files = 'src/Classes/Categories/UIApplication/{*.m,*.h}'
	    end
    end
  end

  spec.dependency 'FLEX', '~> 2.4'

end
