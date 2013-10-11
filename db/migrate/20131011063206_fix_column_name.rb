class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :products, :type, :ptype
  end

  def down
  end
end

