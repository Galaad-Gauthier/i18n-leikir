# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n/leikir/version'

Gem::Specification.new do |spec|
  spec.name          = "i18n-leikir"
  spec.version       = I18n::Leikir::VERSION
  spec.authors       = ["Pierre Flores"]
  spec.email         = ["pierre.flores@leikir-studio.com"]
  spec.description   = "I18n active record without the bullshit"
  spec.summary       = "it's pretty good"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

end
