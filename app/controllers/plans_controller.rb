class PlansController < ApplicationController
  def index
  end

  def search
    @plans = Plan.search(params[:guest_num], params["date_start(1i)"],params["date_start(2i)"], params["date_start(3i)"],
             params["date_end(1i)"],params["date_end(2i)"],params["date_end(3i)"])
    render "index"
  end

  def show
    @plan = Plan.find(params[:id])
  end
end
