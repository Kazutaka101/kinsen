class ReservationsController < ApplicationController
  before_action :login_required
  def new
    @plan = Plan.find(params[:plan_id])
    @reservation = Reservation.new
  end

  def create
    type_id = ""
   
    if params[:roten] == "true"
      type_id = "1,"
    end

    if params[:wasitsu] == "true"
      type_id = "#{type_id}2,"
    end

    if params[:kawa] == "true"
      type_id = "#{type_id}3,"
    end
    type_id = type_id.chop
    p "THIS IS TYPE_ID "
    p type_id
    @reservation = Reservation.new
    @reservation.member_id = session[:member_id]
    @reservation.plan_id = params[:plan_id]
    @reservation.type_id = type_id
    @reservation.guest_count = params[:guest_count]
    @reservation.date_start = params[:date_start]
    @reservation.date_end = params[:date_end]
    @reservation.morning = params[:morning] == 1
    if @reservation.save
      redirect_to mypages_path, notice: "Done reservation"
    else
      @plan = Plan.find(@reservation.plan_id)
      flash.alert = "予約に失敗しました。最初からやり直してください。"
      render "new"
    end
  end

  def show
    @reservations = Reservation.where(member_id: session[:member_id])
    
  end

  def destroy
  end
end
