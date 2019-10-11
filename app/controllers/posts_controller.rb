class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @posts = Post.all.page(params[:page]).per(5)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(create_params) if user_signed_in?
    redirect_to :root
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(update_params)
    redirect_to :root
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to :root
  end

  private

  def create_params
    params.require(:post).permit(:image, :text).merge user_id :current_user.id
  end

  def update_params
    params.require(:post).permit(:image, :text)
  end
end
