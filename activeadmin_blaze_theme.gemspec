# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin_blaze_theme/version'

Gem::Specification.new do |spec|
  spec.name          = "activeadmin_blaze_theme"
  spec.version       = ActiveAdminBlazeTheme::VERSION
  spec.authors       = ["Mattia Roccoberton"]
  spec.email         = ["mat@blocknot.es"]
  spec.summary       = "ActiveAdmin Blaze Theme"
  spec.description   = "An ActiveAdmin theme which use Blaze CSS UI toolkit"
  spec.homepage      = "https://github.com/blocknotes/activeadmin_blaze_theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activeadmin'
end
