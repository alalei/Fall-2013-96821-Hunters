require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :id => 1.5,
        :title => "Title",
        :category => 1,
        :condition => false,
        :starting_price => "9.99",
        :fixed_price => "9.99",
        :is_bid => false
      ),
      stub_model(Product,
        :id => 1.5,
        :title => "Title",
        :category => 1,
        :condition => false,
        :starting_price => "9.99",
        :fixed_price => "9.99",
        :is_bid => false
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
