class MetroLinesController < ApplicationController
  def index
    @metro_lines = MetroLine.all
  end

  def show
    @metro_line = MetroLine.find(params[:id])
  end

  def new
    @metro_line = MetroLine.new
  end

  def create
    @metro_line = MetroLine.new(metro_line_params)
    if @metro_line.save
      redirect_to @metro_line, notice: 'Metro line was successfully created.'
    else
      render :new
    end
  end

  def edit
    @metro_line = MetroLine.find(params[:id])
  end

  def update
    @metro_line = MetroLine.find(params[:id])
    if @metro_line.update(metro_line_params)
      redirect_to @metro_line, notice: 'Metro line was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @metro_line = MetroLine.find(params[:id])
    @metro_line.destroy
    redirect_to metro_lines_url, notice: 'Metro line was successfully destroyed.'
  end

  private

  def metro_line_params
    params.require(:metro_line).permit(:name, :color)
  end
end