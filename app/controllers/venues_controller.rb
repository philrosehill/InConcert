class VenuesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)

    if @venue.save
      redirect_to venues_path, notice: "New Venue created."
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

  def venue_params
    params.require(:venue).permit(:venue_name, :venue_description, :venue_zip_code)
  end
end
