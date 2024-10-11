class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end
  
    def toggle_completed
      @task = Task.find(params[:id])
      @task.update(is_completed: !@task.is_completed)
      respond_to do |format|
        format.html { redirect_to tasks_path }
        format.js   # For AJAX support if you're using `remote: true`
      end
    end
  end
  