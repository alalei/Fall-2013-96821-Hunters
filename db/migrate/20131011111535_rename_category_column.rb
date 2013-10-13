##
# Rename column - category to category id in products table
class RenameCategoryColumn < ActiveRecord::Migration
  ##
  # Rename column
  def up
    rename_column :products, :category, :category_id
  end

  ##
  # Undo Rename column - not implemented
  def down
  end
end
