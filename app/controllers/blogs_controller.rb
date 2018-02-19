class BlogsController < ApplicationController
  def index
    @blog_posts = Blog.all
  end
end
