class StatusPageController < ApplicationController
  def home
    # byebug
    @micropost = current_user.microposts.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
