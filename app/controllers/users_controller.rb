class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
  end

  def edit
    @user = current_user
  end
  
  def update
  end
end
