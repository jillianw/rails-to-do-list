class TasksController < ApplicationController
  def new
  end

  def create
    @task = Task.new
    @task.title = params[:title]
    @task.save

    a = Assignment.new
    a.user_id = current_user.id
    a.task_id = @task.id
    a.save

    redirect_to("/tasks/new")
  end

  def index
    @tasks = current_user.tasks
  end

  def complete
    @task = find_by_id(params[:id])
    @task.completed = true
    @task.save

    redirect_to("/tasks")
  end
end