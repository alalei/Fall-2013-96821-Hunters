##
# Add Index - for product and category table
class AddIndexes < ActiveRecord::Migration
  ##
  # Add the index
  def up
    add_index "products",["category_id"], :name => "index_products_by_category"
  end
  ##
  # Remove the index - not implemented
  def down
  end
end
