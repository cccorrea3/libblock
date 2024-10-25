class EnvironmentsController < ApplicationController
  before_action :set_environment, only: [:show, :edit, :update, :destroy]

  def index
    @environments = Environment.all
  end

  def show
  end

  def new
    @environment = Environment.new
  end

  def create
    @environment = Environment.new(environment_params)
    if @environment.save
      redirect_to @environment, notice: 'Environment was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @environment.update(environment_params)
      redirect_to @environment, notice: 'Environment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @environment.destroy
    redirect_to environments_url, notice: 'Environment was successfully destroyed.'
  end

  private

  def set_environment
    @environment = Environment.find(params[:id])
  end

  def environment_params
    params.require(:environment).permit(:name, :description, :status, :type)
  end
end