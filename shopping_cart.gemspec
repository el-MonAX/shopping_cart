require 'English'
$LOAD_PATH.push File.expand_path('lib', __dir__)

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

  s.add_dependency 'rails', '~> 5.2.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'rspec-rails'
end
