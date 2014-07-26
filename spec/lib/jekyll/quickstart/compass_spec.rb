require "spec_helper"

describe "compass" do

  let(:jekyll_root) { Pathname.new("../compass_fixtures").expand_path(__FILE__) }
  before { Pathname.glob(jekyll_root.join("_assets/images/colors-*.png")).each {|p| FileUtils.rm p } }

  it "compass support image sprites" do
    jekyll_build
    expect(Pathname.glob(jekyll_destination.join("assets/colors-*.png"))).to_not be_empty
  end
end
