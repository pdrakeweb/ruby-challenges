require 'bundler/setup'
require 'rake'
require 'rspec/core/rake_task'

root = __dir__

task default: %w(test:spec)
task test: %w(test:spec)

namespace :test do
  desc 'Run RSpec specs.'
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.ruby_opts = "-C #{root}"
  end
end
