class PerformersController < ApplicationController
  # before_action :authenticate_user!

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
  end

  def update
  end

  def show
  end

  private

  def performer_params
    params.require(:performer).permit(:performer_name, :performer_description)
  end

end
