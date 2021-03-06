# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'active_storage_db/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'active_storage_db'
  spec.version     = ActiveStorageDB::VERSION
  spec.authors     = ['Mattia Roccoberton']
  spec.email       = ['mattiaroccoberton@nebulab.it']
  spec.homepage    = 'https://blocknot.es'
  spec.summary     = 'ActiveStorage DB Service'
  spec.description = 'An ActiveStorage service plugin to store files in database.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'activestorage', '~> 5.2.0'
  spec.add_dependency 'rails', '~> 5.2.0'

  spec.add_development_dependency 'capybara', '~> 3.33.0'
  spec.add_development_dependency 'database_cleaner-active_record', '~> 1.8.0'
  spec.add_development_dependency 'factory_bot_rails', '~> 6.1.0'
  spec.add_development_dependency 'mysql2', '~> 0.5.3'
  spec.add_development_dependency 'pg', '~> 1.2.3'
  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4.1'
  spec.add_development_dependency 'rspec-rails', '~> 4.0.1'
  spec.add_development_dependency 'rubocop', '~> 0.89.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.42.0'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.142.7'
  spec.add_development_dependency 'simplecov', '~> 0.18.5'
end
