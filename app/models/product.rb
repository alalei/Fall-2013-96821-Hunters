class Product < ActiveRecord::Base
  attr_accessible :category_id, :condition, :fixed_price, :id, :is_bid, :starting_price, :title, :brand, :ptype, :listing_days, :start_date, :shipping_cost, :image, :remote_image_url, :days_used

  belongs_to :category
  belongs_to :user
  mount_uploader :image, ImageUploader

  #delegate :name, :to => :category, :prefix => true


  #To validate the fixed price only when bidding is not selected
  validates :fixed_price,
           numericality: { greater_than_or_equal_to: 0,
                          less_than_or_equal_to: 1000000 },
           :unless => :is_bid?

  #To validate the starting price only when bidding is selected
  validates :starting_price, presence: true,
           numericality: { greater_than_or_equal_to: 0,
                          less_than_or_equal_to: 1000000 },
           :if => :is_bid?

  #To validate that shipping cost is not left blank and that it is between $0 and $1,000,000.00
  validates :shipping_cost, presence: true,
           numericality: { greater_than_or_equal_to: 0,
                          less_than_or_equal_to: 1000000 }

  #To validate the format of the uploaded image
  validates :image, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'Image must be a .gif, ,jpg or .png file'
  }

  #  Comment
  def resetDaysUsedIfNewProduct
    if self.condition == true
      self.days_used = ""
    end
  end
end
