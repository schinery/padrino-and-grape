RACK_ENV = "test" unless defined?(RACK_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

Dir[
  File.expand_path(File.dirname(__FILE__) + "/../app/helpers/**/*.rb")
].each(&method(:require))

# require "minitest/unit"
# require "mocha/mini_test"

# Use neato formatting of minitest output
MiniTest::Reporters.use!

# Filter the backtraces produced by tests. We want to see only lines which are
# not in libraries, so we"ll reject anything in the .rvm folder.
def MiniTest.filter_backtrace(bt)
  bt.reject { |line| line =~ /rvm/ }
end

class MiniTest::Spec
  include Rack::Test::Methods

  # You can use this method to custom specify a Rack app
  # you want rack-test to invoke:
  #
  #   app TestingApp::App
  #   app TestingApp::App.tap { |a| }
  #   app(TestingApp::App) do
  #     set :foo, :bar
  #   end
  #
  def app(app = nil, &blk)
    @app ||= block_given? ? app.instance_eval(&blk) : app
    @app ||= Padrino.application
  end
end