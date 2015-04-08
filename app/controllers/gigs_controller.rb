class GigsController < ApplicationController
  before_action :authenticate_user!

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
    @gig = Gig.find(params[:id])
  end

  def update
    @gig = Gig.find(params[:id])

    if @gig.update_attributes(gig_params)
      redirect_to gigs_path
    else
      render :edit
    end
  end

  def show
    @gig = Gig.find(params[:id])
  end

  private

  def gig_params
    params.require(:gig).permit(:gig_id, :venue_id, :date)
  end
end
