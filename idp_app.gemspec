# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'idp_app/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'idp_app'
  s.version     = IdpApp::VERSION
  s.authors     = ['Russell Reas']
  s.email       = ['rreas@q-centrix.com']
  s.homepage    = 'http://q-centrix.com'
  s.summary     = 'SAML IdP application for testing.'
  s.description = 'Always authenticates user with provided email address'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 7.2'

  s.add_development_dependency 'sqlite3'
end
