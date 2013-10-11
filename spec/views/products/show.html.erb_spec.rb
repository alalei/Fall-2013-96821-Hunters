require 'spec_helper'

describe "products/show" do
  before(:each) do
    @category = assign(:category, mock_model(Category,
      :id => 1,
      :name => "Shoes"))
    @product = assign(:product, mock_model(Product,
      :id => 1,
      :title => "Title",
      :category => @category,
      :condition => false,
      :starting_price => "9.99",
      :fixed_price => "9.99",
      :is_bid => false,
      :brand => "",
      :type => "",
      :listing_days => "",
      :start_date => "",
      :shipping_cost => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    #rendered.should match(/CategoryName/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
  end
end
