require 'spec_helper'

describe 'UserPages' do
  subject { page }

  describe 'Sign up' do
    before do
      visit new_user_registration_path
    end

    let(:submit) { 'Sign up' }

    describe 'without information' do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe 'without password' do
      before {fill_in 'user_email', with: 'user@example.com'}
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe 'without user_email' do
      before {fill_in 'user_password',with: 'password2'}
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe 'with unmatched password and confirmation password' do
      before {fill_in 'user_password',with: 'password2'}
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe 'with valid information' do
      before do
        fill_in 'user_email',     with: 'user@example.com'
        fill_in 'user_password',  with: 'password2'
        fill_in 'user_password_confirmation', with: 'password2'
      end

      it 'should create a user' do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe 'after saving the user' do
        before { click_button submit}
        let(:user) { User.find_by_email('user@example.com') }

        it { should have_link('Sign out') }
      end

    end

  end
end