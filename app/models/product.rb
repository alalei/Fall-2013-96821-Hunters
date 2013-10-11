class Product < ActiveRecord::Base
  attr_accessible :category, :condition, :fixed_price, :id, :is_bid, :starting_price, :title, :brand, :ptype, :listing_days, :start_date, :shipping_cost, :image, :remote_image_url, :days_used
  belongs_to :category
  belongs_to :user
  mount_uploader :image, ImageUploader
end
