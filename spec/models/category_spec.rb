require 'spec_helper'

describe Category do

	before { @category = Category.new(name: "Sample Category", description: "Sample Category Explanation") }
	
    subject { @category }
    it { should respond_to(:name) }
    it { should respond_to(:description) }


    describe "when name is not available" do
      before { @category.name = "" }
      it { should_not be_valid }
    end

    describe "when description is not available" do
      before { @category.description = "" }
      it { should be_valid }
    end


end
