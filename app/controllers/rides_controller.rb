class RidesController < ApplicationController
  # GET /rides
  # GET /rides.json
  def index
    @rides = Ride.all
    respond_with @rides
  end

  # GET /rides/1
  # GET /rides/1.json
  def show
    @ride = Ride.find(params[:id])
    respond_with @ride
  end

  # GET /rides/new
  # GET /rides/new.json
  def new
    @ride = Ride.new
    respond_with @ride
  end

  # GET /rides/1/edit
  def edit
    @ride = Ride.find(params[:id])
  end

  # POST /rides
  # POST /rides.json
  def create
    @ride = Ride.new(params[:ride])
    flash[:notice] = 'Ride was successfully created.' if @ride.save
    respond_with @ride
  end

  # PUT /rides/1
  # PUT /rides/1.json
  def update
    @ride = Ride.find params[:id]
    flash[:notice] = 'Ride was successfully updated.' if @ride.update_attributes(params[:ride])
    respond_with @ride
  end

  # DELETE /rides/1
  # DELETE /rides/1.json
  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    respond_with @ride
  end
end
