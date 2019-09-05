class UsersController < ApplicationController
  
  def index
  end 
  
  def show
    @posts = Post.where(params[:user_id])
    @user = User.find(params[:id])
    @nickname = current_user.nickname
  end
  
end
