class PerformersController < ApplicationController
  before_action :authenticate_user!

   def index
    @performers = Performer.all
  end

  def new
    @performer = Performer.new
  end

  def create
    @performer = Performer.new(performer_params)

    if @performer.save
      redirect_to performers_path, notice: "New Performer created."
    else
      render :new
    end
  end

  def edit
    @performer = Performer.find(params[:id])
  end

  def update
    @performer = Performer.find(params[:id])

    if @performer.update_attributes(performer_params)
      redirect_to performers_path
    else
      render :edit
    end
  end

  def show
    @performer = Performer.find(params[:id])
  end

  private

  def performer_params
    params.require(:performer).permit(:performer_name, :performer_description)
  end

end
