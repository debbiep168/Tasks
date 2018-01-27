class TasksController < ApplicationController
  def new
  end
  def create
    @task = Task.new(params.require(:task).permit(:task_name, :comments))

    @task.save
    redirect_to @task
  end
  def index
    @tasks = Task.all
  end
  def show
     @task = Task.find(params[:id])
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end
end
