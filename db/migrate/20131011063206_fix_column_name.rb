##
# Rename type to ptype in products
class FixColumnName < ActiveRecord::Migration
  ##
  # Rename column
  def up
    rename_column :products, :type, :ptype
  end
  ##
  # Undo Rename column - not implemented
  def down
  end
end

