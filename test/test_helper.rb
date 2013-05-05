ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Drop all collections after each test case.
  Mongoid.default_session.collections.select {|c| c.name !~ /system/ }.each(&:drop)

end
