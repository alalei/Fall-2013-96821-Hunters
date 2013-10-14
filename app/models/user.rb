##
# Author::    Hunters  (mailto:fall-2013-hunters@sv.cmu.edu)
# Copyright:: Copyright (c) 2013 Carnegie Mellon University
# License::   Distributes under the same terms as Ruby
# This class is the Model User using Devise
class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ##
  # Accessible attributes for user
  attr_accessible :email, :password, :password_confirmation, :remember_me, :last_name, :first_name

  ##
  # Relationship to Product
  has_many :products
end
