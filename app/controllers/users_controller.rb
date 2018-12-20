class UsersController < ApplicationController

  def index
    @users = User.all
    # byebug

    render json: @users
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(strong_params)
    # byebug


    if @user.valid?
      token = JWT.encode({ user_id: @user.id}, "SECRET")
      # render json: {id: @user.id, username: @user.username }
      # render json: @user
      # byebug
      render json: {user: @user, jwt: token }
    else
      render json: {error: 'WRONG'}, status: 422
    end


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
    params.permit(:username, :first_name, :last_name, :password)
  end
end
