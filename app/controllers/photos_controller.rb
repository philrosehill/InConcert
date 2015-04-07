class PhotosController < ApplicationController
  # before_action :authenticate_user!

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photos_path, notice: "New Photo created."
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

  def photo_params
    params.require(:photo).permit(:filename)
  end
end
