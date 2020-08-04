# frozen_string_literal: true

require "rake/file_list"
require_relative "lib/mbrowser/version"

Gem::Specification.new do |s|
  s.name = "mbrowser"
  s.version = Mbrowser::VERSION
  s.summary = "Minimalistic browser"
  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]

  s.required_ruby_version = ">= 2.5.0"

  s.license = "MIT"

  s.description = <<~DESC
    A simple clean usable browser using WebKit2-Gtk
  DESC

  s.files = Rake::FileList["{bin,lib}/**/*", "LICENSE.txt"]
    .exclude(*File.read(".gitignore").split)
  s.rdoc_options = ["--main", "README.md"]
  s.extra_rdoc_files = ["CODE_OF_CONDUCT.md"]
  s.bindir = "bin"
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.add_runtime_dependency "gir_ffi-gtk", "~> 0.15.0"

  s.add_development_dependency "rake", "~> 13.0"
  s.add_development_dependency "rspec", "~> 3.0"

  s.require_paths = ["lib"]
end
