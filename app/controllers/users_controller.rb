class UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(strong_params)

    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def strong_params
    params.require(:user).permit(:username, :first_name, :last_name, :password)
  end
end
