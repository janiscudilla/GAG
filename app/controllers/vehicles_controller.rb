class VehiclesController < ApplicationController
  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      redirect_to authenticated_root_path
    else
      render :new
    end
  end

private
  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :year)
  end
end
