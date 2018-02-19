class BlogsController < ApplicationController
  def index
    @blog_posts = Blog.all
  end

  def new
    @blog_post = Blog.new
  end

  def create 
    @blog_post = Blog.new(blog_params)

    respond_to do |format|
      if @blog_post.save
        format.html { redirect_to @blog_post, notice: 'Nice blog dude, it is now live' }
      else
        format.html { render :new }
      end
    end
  end


  private
    def blog_params
      params.require(:blog).permit(:title, :body)
    end

  end

end