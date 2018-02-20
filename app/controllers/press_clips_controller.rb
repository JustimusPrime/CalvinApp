class PressClipsController < ApplicationController
  def index
    @press_clips = PressClip.all
  end

  def new
    @press_clip = PressClip.new
  end

  def create 
    @press_clip = PressClip.new(press_clip_params)

    respond_to do |format|
      if @press_clip.save
        format.html { redirect_to press_clips_path, notice: 'Press added, with all this press youll run comedy central soon' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @press_clip = PressClip.find(params[:id])
  end

  def update
    @press_clip = PressClip.find(params[:id])
    respond_to do |format|
      if @press_clip.update(press_clip_params)
        format.html { redirect_to press_clips_path, notice: 'You have edited this press clipping, hope they get it right next time'}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @press_clip = PressClip.find(params[:id])
    @press_clip.destroy
    respond_to do |format|
      format.html { redirect_to press_clips_url, notice: "You have deleted this press clip, probably because nobody remembers Jen Perney" }
    end
  end

  private

  # def set_blog
  #   @blog_post = Blog.find(params[:id])
  # end

  def press_clip_params
    params.require(:press_clip).permit(:title, :subtitle, :link, :image)
  end
end


