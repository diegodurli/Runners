module PostsHelper

  def get_posts_desc
    Post.getDescPosts()
  end
end
