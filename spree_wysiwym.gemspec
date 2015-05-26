# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_wysiwym'
  s.version     = '0.1'
  s.summary     = 'Spree extension for adding wysiwym editor in product textarea.'
  s.description = 'Spree extension for adding wysiwym editor in product textarea.'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Chris Cashwell'
  s.email     = 'ccashwell@gmail.com'
  s.homepage  = 'https://github.com/ccashwell/spree_wysiwym'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.1.0.beta'
end
