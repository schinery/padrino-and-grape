require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "PadrinoAndGrape::App::BaseHelper" do
  before do
    @helpers = Class.new
    @helpers.extend PadrinoAndGrape::App::BaseHelper
  end

  def helpers
    @helpers
  end

  it "should return nil" do
    assert_equal nil, helpers.foo
  end
end
