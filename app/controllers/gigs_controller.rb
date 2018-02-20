class GigsController < ApplicationController

  def index
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
  end

  def create 
    @gig = Gig.new(gig_params)

    respond_to do |format|
      if @gig.save
        format.html { redirect_to gigs_path, notice: 'Another date on the calendar, success is near!' }
      else
        format.html { render :new }
      end
    end
  end

  private

  # def set_blog
  #   @blog_post = Blog.find(params[:id])
  # end

  def gig_params
    params.require(:gig).permit(:date, :time, :show_name, :location, :link)
  end
end
