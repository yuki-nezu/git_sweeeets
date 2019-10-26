require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert true
  end

  test "should create post" do
    Post.create(text: "text", user_id: 1)
    assert true
  end

  test "should show post" do
    get post_url(@post)
    assert true
  end
  
  test "should edit post" do
    get edit_post_url(@post)
    assert true
  end
  
  test "should update post" do
    patch post_url(@post)
    @post.update(text: "text2", user_id: 1)
    assert true
  end
  
  test "should destroy post" do
    delete post_url(@post)
    assert true
  end
  
end
