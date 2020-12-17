class MypagesController < ApplicationController
  #before_action :login_required
  def index
    if current_member
    @member = Member.find(session[:member_id])
    end
  end
end
