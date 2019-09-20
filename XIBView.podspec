Pod::Spec.new do |spec|
  spec.name         = 'XIBView'
  spec.version      = '0.1.0'
  spec.license      = 'MIT'
  spec.homepage       = 'https://medium.com/zenchef-tech-and-product/how-to-visualize-reusable-xibs-in-storyboards-using-ibdesignable-c0488c7f525d'
  spec.authors      = { 'Adrien Cognée' => 'https://medium.com/@adriencog' }
  spec.summary      = 'An @IBDesignable view to visualize reusable xibs in storyboards.'
  spec.source       = { :git => 'https://github.com/byteslick/XIBView.git', :tag => spec.version.to_s }
  spec.ios.deployment_target = '9.2'
  spec.source_files = 'XIBView/Classes/**/*'
end
