class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # We recuperate the task by its id
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save!

    redirect_to task_path(@task)
  end

  def edit
    # We edit the task
  end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
