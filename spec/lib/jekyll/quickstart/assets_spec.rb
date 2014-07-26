require "spec_helper"

describe "assets" do

  let(:jekyll_root) { Pathname.new("../assets_fixtures").expand_path(__FILE__) }

  it "integrate dependency gem assets to sprockets" do
    jekyll_build
    expect(Pathname.glob(jekyll_destination.join("assets/app-*.js"))).to_not be_empty
  end

end
