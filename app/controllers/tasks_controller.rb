class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(secure_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(secure_params)
    redirect_to tasks_path
  end

  def show
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  private

  def secure_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
