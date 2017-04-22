class PagesController < ApplicationController
  before_filter :authorize_admin, only: :admin_page


  def admin_page
    @users = User.all
  end

  def home
    @users = User.all
  end

  def user_list
    @users = User.all
  end


end
