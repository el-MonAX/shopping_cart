$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'shopping_cart/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'shopping_cart'
  s.version     = ShoppingCart::VERSION
  s.authors     = ['Max Mukhortov']
  s.email       = ['makc.mukhortov@gmail.com']
  s.homepage    = 'https://github.com/el-MonAX/shopping_cart'
  s.summary     = 'Summary of ShoppingCart.'
  s.description = 'Description of ShoppingCart.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile',
                'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'cancancan'
  s.add_dependency 'country_select', '~> 3.1', '>= 3.1.1'
  s.add_dependency 'devise', '~> 4.4', '>= 4.4.1'
  s.add_dependency 'haml-rails', '~> 1.0.0'
  s.add_dependency 'rails', '~> 5.2'
  s.add_dependency 'rails-i18n', '~> 5.1'
  # s.add_dependency 'simple_form', '~> 3.5'
  s.add_dependency 'wicked', '~> 1.3', '>= 1.3.2'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner', '~> 1.6', '>= 1.6.1'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'rails-controller-testing', '~> 1.0', '>= 1.0.2'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end
