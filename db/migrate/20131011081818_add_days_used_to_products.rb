class AddDaysUsedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :days_used, :string
  end
end
