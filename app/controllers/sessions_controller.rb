class SessionsController < ApplicationController
  def create
    member = Member.find_by(email: params[:email])
    if member&.authenticate(params[:password])
      session[:member_id] = member.id
    else
      flash.alert = "名前とパスワード一致しません"
    end
  end

  def destroy
    session.delete(:member_id)
  end
end
