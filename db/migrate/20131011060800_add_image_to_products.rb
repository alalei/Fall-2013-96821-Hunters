##
# Ass Image column to Products table
class AddImageToProducts < ActiveRecord::Migration
  ##
  # Add column
  def change
    add_column :products, :image, :string
  end
end
