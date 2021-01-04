class Admin::PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(params[:plan])
    if @plan.save
      redirect_to admin_plans_path, notice: "Created"
    else
      render "new"
    end
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.assign_attributes(params[:plan])
    if @plan.save
      redirect_to admin_plans_path, notice: "Updated"
    else
      render "edit"
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to admin_plans_path, notice: "Deleted"
  end

  def show
    @plan = Plan.find(params[:id])
  end
end
