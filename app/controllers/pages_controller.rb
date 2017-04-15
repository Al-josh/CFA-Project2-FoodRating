class PagesController < ApplicationController
  before_filter :authorize_admin, only: :admin_page

  def home
  end

  def admin_page
    @users = User.all
  end

end
