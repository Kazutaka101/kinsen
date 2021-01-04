class ReservationsController < ApplicationController
  before_action :login_required
  def new
    @plan = Plan.find(params[:plan_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.member_id = session[:member_id]
    @reservation.plan_id = params[:plan_id]
    @reservation.type_id = params[:type_id]
    @reservation.guest_count = params[:guest_count]
    @reservation.date_start = params[:date_start]
    @reservation.date_end = params[:date_end]
    @reservation.morning = params[:morning] == 1
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
