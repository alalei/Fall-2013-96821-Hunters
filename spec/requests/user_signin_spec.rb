require 'spec_helper'


describe 'UserPages' do
  subject { page }

  describe 'Sign in' do
    before do
      visit new_user_session_path
     end
    let(:user){User.create(email: 'user@example.com', password: 'password2', password_confirmation: 'password2')}
    let(:submit) { 'Sign in' }

    describe 'without information' do
      before { click_button submit }
      it { should have_selector('div.alert', text: 'Invalid email or password.') }
    end

    describe 'without password' do
      before do
        fill_in 'user_email', with: user.email
        click_button submit
      end
      it { should have_selector('div.alert', text: 'Invalid email or password.') }
    end

    describe 'without user_email' do
      before do
        fill_in 'user_password',with: user.password
        click_button submit
      end
      it { should have_selector('div.alert', text: 'Invalid email or password.') }
    end

    describe 'with valid information' do
      #before { @user = User.new(email: "user@example.com", password: "password2", password_confirmation: "password2") }
       before do
        fill_in 'user_email',     with: user.email
        fill_in 'user_password',  with: user.password
        click_button submit
      end

      it { should have_link('Sign out') }
      it { should_not have_link('Sign in') }
    end

  end
end