class SessionsController < ApplicationController
  def create
    member = Member.find_by(email: params[:email])
    if member&.authenticate(params[:password])
      session[:member_id] = member.id
      redirect_back(fallback_location: root_path)
    else
      flash.alert = "Email and Password is not correct"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    session.delete(:member_id)
    redirect_to :root
  end
end
