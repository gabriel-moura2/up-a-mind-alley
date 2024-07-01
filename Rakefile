require 'rake/testtask'
require 'yard'

Rake::TestTask.new do |t|
    t.pattern = "test/**/*_test.rb"
end

YARD::Rake::YardocTask.new

task default: ["test"]