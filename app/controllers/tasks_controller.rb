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
    @user = User.all
    @assignment = Assignment.all
  end

  def edit
    @task = Task.find_by_id(params[:id])
    @task_owner = Assignment.all
    @family = Family.all 
    @user = User.find_by_id(params[:id])  
    
  end

  def update
    @task = Task.find_by_id(params[:id])
    @task.save

    redirect_to("/tasks/index")
  end
end