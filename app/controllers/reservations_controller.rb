class ReservationsController < ApplicationController
  before_action :login_required
  def new
    @plan = Plan.find(params[:plan_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    
    if @reservation.save
      redirect_to mypage_path, notice: "Done reservation"
    else
      @plan = Plan.find(params[:reservation]["plan_id"])
      render "new"
    end
  end

  def show
    @reservations = Reservation.where(member_id: session[:member_id])
  end

  def destroy
  end
end
