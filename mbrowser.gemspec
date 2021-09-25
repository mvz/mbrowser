# frozen_string_literal: true

require "rake/file_list"
require_relative "lib/mbrowser/version"

Gem::Specification.new do |spec|
  spec.name = "mbrowser"
  spec.version = Mbrowser::VERSION
  spec.summary = "Minimalistic browser"
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.required_ruby_version = ">= 2.6.0"

  spec.license = "MIT"

  spec.description = <<~DESC
    A simple clean usable browser using WebKit2-Gtk
  DESC

  spec.files = Rake::FileList["{bin,lib}/**/*", "LICENSE.txt"]
    .exclude(*File.read(".gitignore").split)
  spec.rdoc_options = ["--main", "README.md"]
  spec.extra_rdoc_files = ["CODE_OF_CONDUCT.md"]
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "gir_ffi-gtk", "~> 0.15.0"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.require_paths = ["lib"]
end
