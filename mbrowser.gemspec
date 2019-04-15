# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mbrowser/version'

Gem::Specification.new do |spec|
  spec.name          = 'mbrowser'
  spec.version       = Mbrowser::VERSION
  spec.authors       = ['Matijs van Zuijlen']
  spec.email         = ['matijs@matijs.net']

  spec.summary       = 'Minimalistic browser'
  spec.description   = 'A simple clean usable browser using WebKit2-Gtk'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'webkit2-gtk', '~> 3.3.0'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
