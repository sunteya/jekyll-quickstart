require "spec_helper"
require "jekyll/quickstart/content_for_tag"

describe Liquid::ContentFor do

  it "should capture by content_for" do
    template_source = <<-END_TEMPLATE
      {% content_for sidebar %}
        Monkeys!
      {% endcontent_for %}

      <h1>{{ content_for_sidebar }}</h1>
    END_TEMPLATE

    template = Liquid::Template.parse(template_source)
    expect(template.render).to match /<h1>\s+Monkeys!\s+<\/h1>/
  end
end
