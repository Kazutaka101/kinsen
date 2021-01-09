class Admin::RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
end
