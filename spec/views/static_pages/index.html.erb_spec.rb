require 'spec_helper'

describe "static_pages/index" do
  before(:each) do
    assign(:static_pages, [
      stub_model(StaticPage),
      stub_model(StaticPage)
    ])
  end
end
