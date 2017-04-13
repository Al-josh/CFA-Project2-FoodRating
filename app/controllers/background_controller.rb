class BackgroundController < ApplicationController
  def photo
    redirect_to "/assets/background_#{rand(6)}.jpg"
  end
end
