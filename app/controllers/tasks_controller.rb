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
end
