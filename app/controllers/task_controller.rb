class TaskController < ApplicationController
  def add

    if params.has_key?(:item) && !params[:item].strip.empty?
      task_item = params[:item].strip
      task = Task.new
      task.item = task_item
      task.save
      session[:task_id] = task.id.to_s
      redirect_to '/taskpage/edit'

    else
      render "/task/add"
    end
  end
end
