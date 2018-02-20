class GigsController < ApplicationController

  def index
    @gig_dates = Gig.all
  end

end
