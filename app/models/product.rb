class Product < ActiveRecord::Base

  attr_accessible :category_id, :condition, :fixed_price, :id, :is_bid, :starting_price, :title, :brand, :ptype, :listing_days, :start_date, :shipping_cost, :image, :remote_image_url, :days_used

  belongs_to :category
  belongs_to :user
  mount_uploader :image, ImageUploader

  #validates :fixed_price,
   #         numericality: { greater_than_or_equal_to: 0,
    #                        less_than_or_equal_to: 1000000 }
  #validates :starting_price, presence: true,
   #         numericality: { greater_than_or_equal_to: 0,
    #                        less_than_or_equal_to: 1000000 }
  #validates :shipping_cost, presence: true,
   #         numericality: { greater_than_or_equal_to: 0,
    #                        less_than_or_equal_to: 1000000 }

end
