class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      redirect_to @station, notice: 'Station was successfully created.'
    else
      render :new
    end
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(station_params)
      redirect_to @station, notice: 'Station was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to stations_url, notice: 'Station was successfully destroyed.'
  end

  private

  def station_params
    params.require(:station).permit(:name, metro_line_ids: [])
  end
end