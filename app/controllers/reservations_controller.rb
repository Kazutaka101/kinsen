class ReservationsController < ApplicationController
  #before_action :login_required
  def new
    @reservation = Reservation.new
    params[:plan_id]
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      redirect_to mypage_path, notice: "Done reservation"
    else
      render "new"
    end
  end

  def show
    #@reservations = Reservation.find_by(member_id: session[:member_id])
    @reservations = Reservation.where(member_id: session[:member_id])
  end

  def destroy
  end
end
