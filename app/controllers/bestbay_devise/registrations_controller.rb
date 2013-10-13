##
# Author::    Hunters  (mailto:fall-2013-hunters@sv.cmu.edu)
# Copyright:: Copyright (c) 2013 Carnegie Mellon University
# License::   Distributes under the same terms as Ruby
# This class overrides registrations handling for Devise - not used for now
class BestbayDevise::RegistrationsController < Devise::RegistrationsController

  def index
      @users = User.all
      respond_to do |format|
        format.html
        format.json { render json: @users }
        format.xml {  render xml: @users  }
        format.js
      end
  end

  def new
  	super
    #create your process here for sign up page
  end

  def create
  	super
    #create your process here for what you want to do when people signing up
  end

  def edit
  	super
    #create your process here for edit user data page
  end

  def update
  	super
    #create your process here for what you want to do when people editing their data
  end

  def destroy
  	super
    #this function is used for deleting user data
  end

end
