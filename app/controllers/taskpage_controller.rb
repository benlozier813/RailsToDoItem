class TaskpageController < ApplicationController

  def edit

    @task = Task.find(session[:task_id])
    @table = Task.find_by item:("item like '%oom'")



  end


  def changetask
    item_id = Task.find_by item: (params[:itemid].to_s)
    item_id.item = params[:change]
    item_id.save
    session[:task_id] = item_id.id.to_s

    redirect_to '/taskpage/edit'
  end


  def displaytable

  end
end
