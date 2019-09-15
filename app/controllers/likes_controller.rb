class LikesController < ApplicationController
  
 def create
  @post = current_user.posts.find(params[:post_id])
  current_user.likes.create!(post_id: @post.id)
 end 

 def destroy
  @post = current_user.posts.find(params[:post_id])
  current_user.likes.find_by(post_id: @post.id).destroy!
 end
  
end
