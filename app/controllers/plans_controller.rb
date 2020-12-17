class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def search
    @plans = Plan.search(params[:q])
    render "index"
  end

  def show
    @plan = Plan.find(params[:id])
  end
end
