class WorkflowsController < ApplicationController
  before_action :set_workflow, only: [:show, :edit, :update, :destroy]

  def index
    @workflows = Workflow.all
  end

  def show
  end

  def new
    @workflow = Workflow.new
  end

  def create
    @workflow = Workflow.new(workflow_params)
    if @workflow.save
      redirect_to @workflow, notice: 'Workflow was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @workflow.update(workflow_params)
      redirect_to @workflow, notice: 'Workflow was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @workflow.destroy
    redirect_to workflows_url, notice: 'Workflow was successfully destroyed.'
  end

  private

  def set_workflow
    @workflow = Workflow.find(params[:id])
  end

  def workflow_params
    params.require(:workflow).permit(:name, :status, steps: [])
  end
end