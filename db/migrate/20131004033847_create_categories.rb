##
# Create Categories table
class CreateCategories < ActiveRecord::Migration
  ##
  # Create table
  def change
    create_table :categories do |t|
      t.integer :id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
