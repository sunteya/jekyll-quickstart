require "spec_helper"

describe "bower_rails" do

  let(:jekyll_root) { Pathname.new("../bower_rails_fixtures").expand_path(__FILE__) }

  it "autoload bower_rails assets to sprockets" do
    jekyll_build
    expect(Pathname.glob(jekyll_destination.join("assets/app-*.js"))).to_not be_empty
  end

end
