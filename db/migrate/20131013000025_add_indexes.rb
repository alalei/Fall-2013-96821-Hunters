class AddIndexes < ActiveRecord::Migration
  def up
    add_index "products",["category_id"], :name => "index_products_by_category"
  end

  def down
  end
end
