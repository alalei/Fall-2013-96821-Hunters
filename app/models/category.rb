class Category < ActiveRecord::Base
  attr_accessible :description, :name, :id
  validates_presence_of :name

  has_many :products
end
