class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  # def new
  #   @user = User.new
  # end

  # # def create
  # #   @user = User.new(user_params)

  # #   if @user.save
  # #     redirect_to users_path, notice: "New User created."
  # #   else
  # #     render :new
  # #   end
  # # end

  # def edit
  # end

  # def update
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:name, :user_zip_code, :rank)
  # end


  # def index
  # end

  # def new
  # end

  # def create
  # end

  # def edit
  # end

  # def update
  # end

  # def show
  # end
end
