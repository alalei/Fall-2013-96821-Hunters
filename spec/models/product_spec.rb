require 'spec_helper'

describe Product do
  before do
    @product = Product.new(title: "Example Product", fixed_price: 100, shipping_cost: 1)
  end
  subject { @product }
  it { should respond_to(:title) }
  it { should respond_to(:fixed_price) }
  it { should respond_to(:shipping_cost) }
  it { should be_valid }

  describe "when fixed price is negative" do
    before { @product.fixed_price = -1 }
    it { should_not be_valid }
  end

  describe "when shipping_cost is negative" do
    before { @product.shipping_cost = -1 }
    it { should_not be_valid }
  end



  describe "when fixed price is in range" do
    before { @product.fixed_price = 1 }
    it { should be_valid }
  end

  describe "when shipping_cost is in range" do
    before { @product.shipping_cost = 1 }
    it { should be_valid }
  end



end
