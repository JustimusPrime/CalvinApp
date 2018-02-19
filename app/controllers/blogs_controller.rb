class BlogsController < ApplicationController
    # before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]

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
        format.html { redirect_to blogs_path, notice: 'Nice blog upate dude, it is now live' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @blog_post = Blog.find(params[:id])
  end

  def update
    @blog_post = Blog.find(params[:id])
    respond_to do |format|
      if @blog_post.update(blog_params)
        format.html { redirect_to blogs_path, notice: 'Nice blog update dude, your changes have been saved'}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @blog_post = Blog.find(params[:id])
  end


  private

    # def set_blog
    #   @blog_post = Blog.find(params[:id])
    # end

    def blog_params
      params.require(:blog).permit(:title, :body)
    end

end

