class BlocksController < ApplicationController
  before_action :require_login
  before_action :set_block, only: [:show, :edit, :update, :destroy]

  def index
    @blocks = Block.all
  end

  def show
  end

  def new
    @block = Block.new
  end

  def edit
  end

  def create
    @block = Block.new(block_params)

    if @block.save
      redirect_to @block, notice: 'Block was successfully created.'
    else
      render :new
    end
  end

  def update
    if @block.update(block_params)
      redirect_to @block, notice: 'Block was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @block.destroy
    redirect_to blocks_url, notice: 'Block was successfully destroyed.'
  end

  private

  def set_block
    @block = Block.find(params[:id])
  end

  def block_params
    params.require(:block).permit(:title, :content)
  end
end