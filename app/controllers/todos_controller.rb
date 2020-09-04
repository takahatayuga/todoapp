class TodosController < ApplicationController
  def index
    @todos = Todo.all.order(deadline: :asc)
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    @user = @todo.user
  end

  def new
  end

  def create
    @todo = Todo.new(
      content: params[:content],
      user_id: current_user.id,
      deadline: params[:deadline],
      status: 0
    )
    @todo.save
    redirect_to("/todos/index")
  end

  def edit
    @todo = Todo.find_by(id: params[:id])
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.content = params[:content]
    @todo.deadline = params[:deadline]
    @todo.status = params[:status]
    @todo.save
    redirect_to("/todos/index")
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    redirect_to("/todos/index")
  end
end
