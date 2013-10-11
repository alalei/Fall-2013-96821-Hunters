class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.float :id
      t.string :title
      t.integer :category_id
      t.boolean :condition
      t.decimal :starting_price
      t.decimal :fixed_price
      t.boolean :is_bid

      t.timestamps
    end
  end
end
