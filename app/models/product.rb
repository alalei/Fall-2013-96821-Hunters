class Product < ActiveRecord::Base
  attr_accessible :category, :condition, :fixed_price, :id, :is_bid, :starting_price, :title
end
