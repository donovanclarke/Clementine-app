require 'rails_helper'

describe UsersController, :type => :controller do

    before do
      @user = User.create(:email => "testing@test.com", :password => "Test1234556")
      @user2 = User.create(:email =>"anothertest@test.com", :password => "moretests12345")
    end

    describe "GET #show" do
      context "User is logged in" do
        before do
          sign_in @user
        end

        it "loads correct user details" do
          get :show, id: @user.id
          expect(assigns(:user)).to eq @user
        end

        it "first user cant access the show page of the second user" do
          get :show, id: @user2.id
          expect(response).to redirect_to(root_path)
        end

      end

      context "No user is logged in" do
        it "redirects to login" do
          get :show, id: @user.id
          expect(response).to redirect_to(root_path)
        end
      end
    end

end
