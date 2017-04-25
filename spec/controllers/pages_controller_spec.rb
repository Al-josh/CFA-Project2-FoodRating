require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #admin_page" do
    it "returns http success" do
      user = User.create(:email => "email@email.com")
      controller.sign_in user

      get :admin_page
      expect(response).to_not have_http_status(:success)
    end
  end

  describe "GET #home" do
    it "returns http success" do
      user = User.create(:email => "email@email.com")
      controller.sign_in user

      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #user_list" do
    it "returns http success" do
      user = User.create(:email => "email@email.com")
      controller.sign_in user

      get :user_list
      expect(response).to have_http_status(:success)
    end
  end


end
