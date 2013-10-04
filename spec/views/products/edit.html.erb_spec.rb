require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :id => 1.5,
      :title => "MyString",
      :category => 1,
      :condition => false,
      :starting_price => "9.99",
      :fixed_price => "9.99",
      :is_bid => false
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input#product_id[name=?]", "product[id]"
      assert_select "input#product_title[name=?]", "product[title]"
      assert_select "input#product_category[name=?]", "product[category]"
      assert_select "input#product_condition[name=?]", "product[condition]"
      assert_select "input#product_starting_price[name=?]", "product[starting_price]"
      assert_select "input#product_fixed_price[name=?]", "product[fixed_price]"
      assert_select "input#product_is_bid[name=?]", "product[is_bid]"
    end
  end
end
