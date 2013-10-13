class User < ActiveRecord::Base
  # Use devise for User Model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Accessible (or protected) attributes for user
  attr_accessible :email, :password, :password_confirmation, :remember_me, :last_name, :first_name
  # attr_accessible :title, :body

  #Relationship to Product
  has_many :products
end
