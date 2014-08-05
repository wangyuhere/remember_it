APP_ROOT = File.dirname __FILE__
$:.unshift File.join(APP_ROOT, 'lib')

require 'bundler'
Bundler.require :default

require 'remember_it'

desc "Start the development console"
task :console do
  pry
end


desc "Run CLI of member it"
task :run do
  RememberIt::Cli.run
end
