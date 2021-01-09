class Admin::SessionsController < ApplicationController
  def create
    if params[:user] == "admin" && params[:password] == "password"
      session[:admin] = "admin"
      redirect_back(fallback_location: root_path)
    else
    flash.alert = "User name or Password is not correct"
    redirect_back(fallback_location: root_path)
    end
  end


  def destroy
    session.delete(:member_id)
    redirect_to :root
  end
end
