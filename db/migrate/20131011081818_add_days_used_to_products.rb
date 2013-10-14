##
# Add column - days_used to products table
class AddDaysUsedToProducts < ActiveRecord::Migration
  ##
  # Add column
  def change
    add_column :products, :days_used, :string
  end
end
