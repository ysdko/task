class Task1sController < ApplicationController
  before_action :set_tasks, only:[:show, :edit, :update, :destroy]
  def index
    @tasks = current_user.task1s.recent
  end

  def show
  end

  def new
    @task = Task1.new
  end

  def edit

  end

  def update
    task.update!(task_params)
    redirect_to task1s_url, notice: "タスク#{task.name}を更新しました"
  end

  def create
    if @task.save
    redirect_to @task, notice: "タスク#{@task.name}を登録しました"
    else
      render :new
    end
    
  end

  def destroy
  task.destroy
  redirect_to task1s_url, notice: "タスクを削除しました"
end



  private

  def task_params
    params.require(:task1).permit(:name, :description)
  end

def set_tasks
   @task = current_user.task1s.find(params[:id])
end

end
