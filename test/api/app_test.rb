require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "App" do
  describe "GET /" do
    before do
      get "api/v1/"
    end

    it "should return hello world json" do
      assert_equal "{\"hello\":\"world\"}", last_response.body
    end
  end
end
