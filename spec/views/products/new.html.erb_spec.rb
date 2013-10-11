require 'spec_helper'

describe "products/new" do
  before(:each) do

    assign(:product, stub_model(Product,
      :id => 1,
      :title => "MyString",
      :condition => false,
      :starting_price => "9.99",
      :fixed_price => "9.99",
      :is_bid => false,
      :brand => "",
      :type => "",
      :listing_days => "",
      :start_date => "",
      :shipping_cost => "",
      #:category => @category
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_id[name=?]", "product[id]"
      assert_select "input#product_title[name=?]", "product[title]"
      #assert_select "input#product_category[name=?]", "product[category]"
      assert_select "input#product_condition[name=?]", "product[condition]"
      assert_select "input#product_starting_price[name=?]", "product[starting_price]"
      assert_select "input#product_fixed_price[name=?]", "product[fixed_price]"
      assert_select "input#product_is_bid[name=?]", "product[is_bid]"
      assert_select "input#product_brand[name=?]", "product[brand]"
      assert_select "input#product_type[name=?]", "product[type]"
      assert_select "input#product_listing_days[name=?]", "product[listing_days]"
      assert_select "input#product_start_date[name=?]", "product[start_date]"
      assert_select "input#product_shipping_cost[name=?]", "product[shipping_cost]"
    end
  end
end
