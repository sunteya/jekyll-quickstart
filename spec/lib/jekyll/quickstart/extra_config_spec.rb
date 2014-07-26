require "spec_helper"

describe "compass" do

  let(:jekyll_root) { Pathname.new("../extra_config_fixtures").expand_path(__FILE__) }

  it "should load extra config" do
    jekyll_build
    expect(jekyll_destination.join("index.html").read).to eq "foobar"
  end
end
