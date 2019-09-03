class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end 
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to :root
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
  end 
  
  def update
  end 
  
  def destroy 
  end 
  
  private
  def post_params 
    params.require(:post).permit(:image,:text)
  end
  
end
