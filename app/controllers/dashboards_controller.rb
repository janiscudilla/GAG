class DashboardsController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end
end
