class GigsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)

    if @gig.save
      redirect_to gigs_path, notice: "New Gig created."
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def gig_params
    params.require(:gig).permit(:performer_id, :venue_id)
  end
end
