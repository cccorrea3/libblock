class ViewsController < ApplicationController
  before_action :set_view, only: [:show, :edit, :update, :destroy]

  def index
    @views = View.all.order(:sort_order)
  end

  def show
  end

  def new
    @view = View.new
  end

  def create
    @view = View.new(view_params)
    if @view.save
      redirect_to @view, notice: 'View was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @view.update(view_params)
      redirect_to @view, notice: 'View was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @view.destroy
    redirect_to views_url, notice: 'View was successfully destroyed.'
  end

  private

  def set_view
    @view = View.find(params[:id])
  end

  def view_params
    params.require(:view).permit(:name, :description, :view_type, :is_active, :sort_order)
  end
end