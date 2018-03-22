class PagesController < ApplicationController

  def home
    @gigs = Gig.all
  end

  def about
  end

  def contact
  end
end
