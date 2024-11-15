class WallsController < ApplicationController
  before_action :set_wall, only: [:show, :edit, :update, :destroy]

  def index
    @walls = Wall.all
  end

  def show
  end

  def new
    @wall = Wall.new
    @blocks = Block.all
  end

  def create
    @wall = Wall.new(wall_params)
    if @wall.save
      redirect_to @wall, notice: 'Wall was successfully created.'
    else
      @blocks = Block.all
      render :new
    end
  end

  def edit
    @blocks = Block.all
  end

  def update
    if @wall.update(wall_params)
      redirect_to @wall, notice: 'Wall was successfully updated.'
    else
      @blocks = Block.all
      render :edit
    end
  end

  def destroy
    @wall.destroy
    redirect_to walls_url, notice: 'Wall was successfully destroyed.'
  end

  private

  def set_wall
    @wall = Wall.find(params[:id])
  end

  def wall_params
    params.require(:wall).permit(:name, :description, :visibility, :walltype, block_ids: [])
  end
end