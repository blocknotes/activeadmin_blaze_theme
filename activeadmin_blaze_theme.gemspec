# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin_blaze_theme/version'

Gem::Specification.new do |spec|
  spec.name          = 'activeadmin_blaze_theme'
  spec.version       = ActiveAdminBlazeTheme::VERSION
  spec.authors       = ['Mattia Roccoberton']
  spec.email         = ['mat@blocknot.es']
  spec.summary       = 'ActiveAdmin Blaze Theme'
  spec.description   = 'An ActiveAdmin theme based on Blaze CSS UI toolkit'
  spec.homepage      = 'https://github.com/blocknotes/activeadmin_blaze_theme'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/blocknotes/activeadmin_blaze_theme/blob/main/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files         = Dir["{app,lib}/**/*", 'LICENSE.txt', 'README.md', 'index.js', 'package.json']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activeadmin', '~> 2.0'

  spec.add_development_dependency 'appraisal', '~> 2.4'
end
