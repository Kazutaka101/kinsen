class Admin::DinnersController < ApplicationController
  def index
    @dinners = Dinner.all
  end

  def show
    @dinner = Dinner.find(params[:id])
  end

  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(params[:dinner])
    if @dinner.save
      redirect_to admin_dinners_path, notice: "Created"
    else
      render "new"
    end
  end

  def destroy
    @dinner = Dinner.find(params[:id])
    @dinner.destroy
    redirect_to admin_dinners_path, notice: "Deleted"
  end
end
