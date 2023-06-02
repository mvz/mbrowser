# frozen_string_literal: true

require_relative "lib/mbrowser/version"

Gem::Specification.new do |spec|
  spec.name = "mbrowser"
  spec.version = Mbrowser::VERSION
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "Minimalistic browser"
  spec.description = <<~DESC
    A simple clean usable browser using WebKit2-Gtk
  DESC
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = File.read("Manifest.txt").split
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.rdoc_options = ["--main", "README.md"]
  spec.extra_rdoc_files = ["CODE_OF_CONDUCT.md"]

  spec.add_runtime_dependency "gir_ffi-gtk", "~> 0.16.0"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-manifest", "~> 0.2.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.51"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.18"
end
