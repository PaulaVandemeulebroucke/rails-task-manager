class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @tasks = Task.new
  end
  def edit
    @tasks = Task.find(params[:id])
  end
  def create
    @tasks = Task.create(task_params)
    redirect_to tasks_path(@task)
  end
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(@task)
  end
  def mark_as_done
    @task = Task.find(params[:id])
    @task.completed = !@task.completed
    @task.save
    redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
