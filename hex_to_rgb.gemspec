Gem::Specification.new do |s|
  s.name     = 'hex_to_rgb'
  s.version  = '0.1.0'
  s.date     = '2014-08-13'
  s.summary  = 'Convert hexadecimal colors to their RGB values.'
  s.authors  = ['Kyle Tolle']
  s.email    = 'kyle@nullsix.com'
  s.files    = ['lib/hex_to_rgb.rb', 'spec/hex_to_rgb_spec.rb']
  s.license  = 'MIT'
  s.homepage = 'https://github.com/kyletolle/hex_to_rgb'

  s.add_development_dependency 'rspec', '~> 3.0', '>= 3.0.0'
end

