class Category < ActiveRecord::Base
  #Category attributes
  attr_accessible :description, :name, :id
  #Attribute validation
  validates_presence_of :name

  #Relationship with Product
  has_many :products
end
