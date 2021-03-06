begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  require 'spec'
end

$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'giternal'
require 'fileutils'
require 'giternal_helper'

Spec::Runner.configuration.before(:each) do
  GiternalHelper.clean!
end

Spec::Runner.configuration.after(:each) do
  GiternalHelper.clean!
end
