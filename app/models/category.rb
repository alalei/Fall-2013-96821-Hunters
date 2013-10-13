# Author::    Hunters  (mailto:fall-2013-hunters@sv.cmu.edu)
# Copyright:: Copyright (c) 2013 Carnegie Mellon University
# License::   Distributes under the same terms as Ruby

# This class is the Model Category
class Category < ActiveRecord::Base
  #Category attributes
  attr_accessible :description, :name, :id
  #Attribute validation
  validates_presence_of :name

  #Relationship with Product
  has_many :products
end
