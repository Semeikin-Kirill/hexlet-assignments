class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    def show
        @task = Task.find(params[:id])
    end
    def new
        @task = Task.new
    end
    def create
        @task = Task.new(task_params)
        @task[:completed] = false
        if @task.save
          flash[:success] = 'New task was successfully created'
    
          redirect_to task_path(@task)
        else
          flash[:failure] = 'Task cannot be created'
          render :new, status: :unprocessable_entity
        end
    end

    private

    def task_params
        params.required(:task).permit(:name, :description, :status, :creator, :performer)
    end
end
