# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_variant_all_options/version'

Gem::Specification.new do |gem|
  gem.name          = "spree_variant_all_options"
  gem.version       = SpreeVariantAllOptions::VERSION
  gem.authors       = ["geermc4"]
  gem.email         = ["geermc4@gmail.com"]
  gem.summary      = "Adds button to generate all possible product combinations"
  gem.description  = "For products with multiple options, just click create all and remove a few if not needed"
  gem.homepage     = "https://github.com/geermc4/spree_variant_all_options"

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]

  gem.add_dependency('spree_core','>=1.3')
end
