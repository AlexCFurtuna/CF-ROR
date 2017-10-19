require 'rails_helper'

describe UsersController, type: :controller do
  before do
    @user = User.create!(email: 'test-email@mail.com', password: 'test-password')
    @user1 = User.create!(email: 'test-email2@mail.com', password: 'test-password')
  end

  describe "GET #show" do    
    context "User is logged in" do
      before do
        it "loads the correct user details" do
          expect(response).to have_http_status(200)
          expect(assign(:user)).to eq @user
        end
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "cannot access second user show page" do
      it "redirects unauthorized user to login page" do
        get :show, params: { id: @user1.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
