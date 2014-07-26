require "spec_helper"

describe "assets" do

  let(:fixture_pathname) { Pathname.new("../assets_fixtures").expand_path(__FILE__) }

  it "integrate dependency gem to Sprockets" do
    dest = fixture_pathname.join("_site")
    FileUtils.rm_rf dest
    Dir.chdir(fixture_pathname) { `bundle exec jekyll build` }
    expect(Pathname.glob(dest.join("assets/app-*.js"))).to_not be_empty
  end

end
