class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(params[:vehicle])
    if @vehicle.save
      redirect_to @vehicle, :notice => "Successfully created vehicle."
    else
      render :action => 'new'
    end
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.update_attributes(params[:vehicle])
      redirect_to @vehicle, :notice  => "Successfully updated vehicle."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_url, :notice => "Successfully destroyed vehicle."
  end
end
