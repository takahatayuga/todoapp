class UsersController < ApplicationController
  def index
     @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.username = params[:username]
    @user.email = params[:email]
    if @user.save
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end
end
