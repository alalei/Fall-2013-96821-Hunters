require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:category, mock_model(Category,
                                 :name => "CategoryName"))
    assign(:products, [
      stub_model(Product,
        :id => 1,
        :title => "Title",
        #:category => @category,
        :condition => false,
        :starting_price => "9.99",
        :fixed_price => "9.99",
        :is_bid => false,
        :brand => "",
        :type => "",
        :listing_days => "",
        :start_date => "",
        :shipping_cost => ""
      ),
      stub_model(Product,
        :id => 2,
        :title => "Title",
        #:category => @category,
        :condition => false,
        :starting_price => "9.99",
        :fixed_price => "9.99",
        :is_bid => false,
        :brand => "",
        :type => "",
        :listing_days => "",
        :start_date => "",
        :shipping_cost => ""
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => 1.to_s, :count => 1
    #assert_select "tr>td", :text => 2.to_s, :count => 1
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    #assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 4
    assert_select "tr>td", :text => "9.99".to_s, :count => 4

  end
end
