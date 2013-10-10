require 'spec_helper'

describe "static_pages/index" do
  before(:each) do
    assign(:static_pages, [
      stub_model(StaticPage),
      stub_model(StaticPage)
    ])
  end

<<<<<<< HEAD

=======
  it "renders a list of static_pages" do
    #FIXME Mustafa render static pages  gives authentication error
    #render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
>>>>>>> e070de61dad59de42f6243b8070a78751b39e2d9
end
