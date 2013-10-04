require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :id => 1.5,
      :title => "Title",
      :category => 1,
      :condition => false,
      :starting_price => "9.99",
      :fixed_price => "9.99",
      :is_bid => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #rendered.should match(/1.5/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
  end
end
