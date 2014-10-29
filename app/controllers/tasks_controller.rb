class TasksController < ApplicationController

  def index
    @tasks = current_user.tasks.order(created_at: :asc)
    @task = Task.new
  end

  def create
    @task = current_user.tasks.create(task_params)

    redirect_to index
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end
end
