require 'rake'
require 'rake/packagetask'
require 'rubygems/package_task'

spec = eval(File.read('spree_mailchimp_gibbon.gemspec'))
Gem::PackageTask.new(spec) do |p|
  p.gem_spec = spec
end

desc "Release to gemcutter"
task :release => :package do
  require 'rake/gemcutter'
  Rake::Gemcutter::Tasks.new(spec).define
  Rake::Task['gem:push'].invoke
end



require 'rspec/core/rake_task'
require 'spree/testing_support/extension_rake'
RSpec::Core::RakeTask.new
task :default => [:spec]

desc 'Generates a dummy app for testing'
task :test_app do
  ENV['LIB_NAME'] = 'spree_mailchimp_gibbon'
  Rake::Task['extension:test_app'].invoke
end
