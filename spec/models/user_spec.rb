require 'spec_helper'

describe User do

  before { @user = User.new(email: "user@example.com", password: "password", password_confirmation: "password") }
	
  subject { @user }
  it { should respond_to(:email) }
  it { should respond_to(:password) }

  describe "when email is not available" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  describe "when password is not available" do
    before { @user.password = "" }
    it { should_not be_valid }
  end

  describe "when password does not match confirmation" do
    before { @user.password_confirmation = "mismatch_password" }
    it { should_not be_valid }
  end

  describe "when password does not match with the valid email" do
    before { @user.password = "new_password " }
    it { should_not be_valid }
  end

  describe "when the email and password combination is valid" do
      before do 
      	@user.email = "example@example.com"
      	@user.password = "password"
      end
      it { should be_valid }
  end



end
