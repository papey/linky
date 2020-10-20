require "./spec_helper"

describe Urls do
  it "should return true if status code is redirect" do
    Urls.is_redirect?(301).should eq true
  end

  it "should get example.com path" do
    Urls.get_urls("http://example.com", 2).should eq [{200, "http://example.com"}]
  end
end
