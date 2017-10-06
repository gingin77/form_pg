class StopsController < ApplicationController
  def index
    @stops = Stop.all
  end

  def import
    Stop.import(params[:file])
    redirect_to root_url, notice: "Data imported"
  end
end
