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

  def edit
    @gig = Gig.find(params[:id])
  end

  def update
    @gig = Gig.find(params[:id])
    respond_to do |format|
      if @gig.update(gig_params)
        format.html { redirect_to gigs_path, notice: 'You have edited this show, hopefully it`s right this time!'}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    respond_to do |format|
      format.html { redirect_to gigs_url, notice: "You have cancelled on this show, which was probably wise" }
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
