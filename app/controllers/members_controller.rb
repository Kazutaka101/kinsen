class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    #@member = Member.new(params.require(:member).permit(:name, :gender, :telephonem, :email, :address, :birthday))
    if @member.save
      redirect_to mypage_path, notice:"会員登録をしました"
    else
      render "new"
    end
  end
  
end
