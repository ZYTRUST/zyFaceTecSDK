Pod::Spec.new do |s|
  s.name             = 'zyFaceTecSDK'
  s.version          = '0.0.5'
  s.summary          = 'FaceTecSDK empaquetado por ZyTrust.'
  s.description      = <<-DESC
  Distribucion de FaceTecSDK.xcframework con el archivo de localizacion
  en espanol FaceTec-es.strings. El modulo se importa como `import FaceTecSDK`.
  DESC

  s.homepage         = 'https://www.zytrust.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan Caceres' => 'ztmobile@zytrust.com' }
  s.source           = { :git => 'https://github.com/ZYTRUST/zyFaceTecSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  # FaceTecSDK es un framework DINAMICO: no usar s.static_framework.
  s.vendored_frameworks = 'Sources/FaceTecSDK.xcframework'

  # Textos en espanol: se copian al bundle principal de la app.
  s.resources = ['Sources/FaceTec-es.strings']
end
