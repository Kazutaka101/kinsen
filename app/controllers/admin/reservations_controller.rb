class Admin::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.order("id")
  end

  def show
    @reservations = Reservation.where(member_id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to admin_members_path, notice: "Deleted Reservation" 
  end
end
