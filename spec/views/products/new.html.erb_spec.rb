require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:category, mock_model(Category,
                                 :id => 1,
                                 :name => "CategoryName"))
    assign(:product, stub_model(Product,
      :id => 1,
      :title => "MyString",
      :condition => false,
      :starting_price => "9.99",
      :fixed_price => "9.99",
      :is_bid => false,
      :brand => "",
      :ptype => "",
      :listing_days => "",
      :start_date => "",
      :shipping_cost => "",
      :category => @category
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      #assert_select "input#product_id[name=?]", "product[id]"
      assert_select "input#product_title[name=?]", "product[title]"
      assert_select "select#product_category_id[name=?]", "product[category_id]"
      #assert_select "input#product_condition[name=?]", "product[condition]"
      assert_select "input#product_starting_price[name=?]", "product[starting_price]"
      assert_select "input#product_fixed_price[name=?]", "product[fixed_price]"
      assert_select "input#product_is_bid[name=?]", "product[is_bid]"
      assert_select "input#product_brand[name=?]", "product[brand]"
      assert_select "input#product_ptype[name=?]", "product[ptype]"
      assert_select "input#product_listing_days[name=?]", "product[listing_days]"
      assert_select "input#product_start_date[name=?]", "product[start_date]"
      assert_select "input#product_shipping_cost[name=?]", "product[shipping_cost]"
    end
  end
end


describe "creating products" do
  before :each do
    Category.create(:name => 'Electronics', :description => 'Electronics')
    visit '/products/new'
    fill_in "Title", :with => "Laptop"
    page.select "Electronics", :from => "Category"
    fill_in "Brand", :with => "Lenovo"
    fill_in "product_ptype", :with => "Electronics"
  end

  describe "when posting a product for sale"     do
    before :each do
      fill_in "Shipping cost", :with => 9.99
      attach_file("product_image", "#{Rails.root}/spec/support/example.jpg")
    end

    it "creates a product in new condition for sale succesfully" do
      fill_in "Fixed price", :with => 9.99
      choose "product_condition_true"
      click_button "Create Product"
      expect(page).to have_content("Product was successfully created")
    end

    it "should not create a product for sale if fixed price is missing" do
      fill_in "Fixed price", :with => ""
      choose "product_condition_true"
      click_button "Create Product"
      page.should_not(have_content("Product was succesfully created"))
    end

    it "should create a product in used condition succesfully for sale" do
      fill_in "Fixed price", :with => 9.99
      choose "product_condition_false"
      click_button "Create Product"
      expect(page).to have_content("Product was successfully created")
    end
  end




  describe "when posting a product for bidding"     do
    before :each do
      check('product_is_bid')
      fill_in "Shipping cost", :with => 9.99
      fill_in "Listing days", :with => 3
      fill_in "product_start_date", :with => "11/12/13"
      attach_file("product_image", "#{Rails.root}/spec/support/example.jpg")
    end

    it "creates a product in new condition for bidding succesfully" do
      choose "product_condition_true"
      fill_in "Starting price", :with => 9.99
      click_button "Create Product"
      expect(page).to have_content("Product was successfully created")
    end


    it "should not create a product for bidding if starting price is missing" do
      choose "product_condition_true"
      fill_in "Starting price", :with => ""
      click_button "Create Product"
      page.should_not(have_content("Product was succesfully created"))
    end

    it "should create a product in used condition succesfully for bidding" do
      choose "product_condition_false"
      fill_in "Starting price", :with => 9.99
      click_button "Create Product"
      page.should_not(have_content("Product was succesfully created"))
    end
  end

end