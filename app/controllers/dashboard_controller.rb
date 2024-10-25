class DashboardController < ApplicationController
  def index
    @metro_lines_count = MetroLine.count
    @stations_count = Station.count
    @blocks_count = Block.count
  end
end