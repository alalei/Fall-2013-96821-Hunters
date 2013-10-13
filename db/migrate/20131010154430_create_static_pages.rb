##
# Create Static Pages table
class CreateStaticPages < ActiveRecord::Migration
  ##
  # Create table
  def change
    create_table :static_pages do |t|

      t.timestamps
    end
  end
end
