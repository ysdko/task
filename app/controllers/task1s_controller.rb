class Task1sController < ApplicationController
  def index
    @tasks = Task1.all
  end

  def show
    @task = Task1.find(params[:id])
  end

  def new
    @task = Task1.new
  end

  def edit
    @task = Task1.find(params[:id])

  end

  def update
    task = Task1.find(params[:id])
    task.update!(task_params)
    redirect_to task1s_url, notice: "タスク#{task.name}を更新しました"
  end

  def create
    task = Task1.new(task_params)
    task.save!
    redirect_to task1s_url, notice: "タスク#{task.name}を登録しました"
  end

  def destroy
task = Task1.find(params[:id])
task.destroy
redirect_to task1s_url, notice: "タスクを削除しました"
end

  private

  def task_params
    params.require(:task1).permit(:name, :description)
  end

  

end
