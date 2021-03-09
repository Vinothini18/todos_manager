class HomeController < ApplicationController
  #skip_before_action :ensure_user_logged_in

  def welcome
    if current_user
      redirect_to todos_path
    else
      render "home"
    end
  end
  def index
    render plain: "This is the homepage"
  end
end