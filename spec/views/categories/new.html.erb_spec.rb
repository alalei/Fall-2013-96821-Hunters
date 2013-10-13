require 'spec_helper'

describe "categories/new" do
  before(:each) do
    assign(:category, stub_model(Category,
      :id => 1,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categories_path, "post" do
      #assert_select "input#category_id[name=?]", "category[id]"
      assert_select "input#category_name[name=?]", "category[name]"
      assert_select "input#category_description[name=?]", "category[description]"
    end
  end

  describe "create a new category succesfully" do
      before :each do
        visit '/categories/new'
        fill_in "Name", :with => "Sample"
        fill_in "Description", :with => "Sample Description"
      end

      it "creates a category succesfully" do
        click_button "Create Category"
        expect(page).to have_content("Category was successfully created")
      end

      it "should not create a category without name" do
        fill_in "Name", :with => ""
        click_button "Create Category"
        expect(page).not_to have_content("Category was successfully created")
      end

      it "should create a category without a description" do
        fill_in "Name", :with => "Sample"
        fill_in "Description", :with => ""
        click_button "Create Category"
        expect(page).to have_content("Category was successfully created")
      end
  end
end
