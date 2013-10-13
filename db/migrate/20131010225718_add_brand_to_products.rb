##
# Add Brand, Type, Listing days, Start date, Shipping Cost to Products table
class AddBrandToProducts < ActiveRecord::Migration
  ##
  # Add columns
  def change
    add_column :products, :brand, :string
    add_column :products, :type, :string
    add_column :products, :listing_days, :integer
    add_column :products, :start_date, :date
    add_column :products, :shipping_cost, :decimal
  end
end
