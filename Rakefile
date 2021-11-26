# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/manifest/task"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

Rake::Manifest::Task.new do |t|
  t.patterns = ["{bin,lib}/**/*", "LICENSE.txt", "*.md"]
end

task build: "manifest:check"
task default: [:spec, "manifest:check"]
