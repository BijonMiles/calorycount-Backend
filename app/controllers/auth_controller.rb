class AuthController < ApplicationController

  def create

    # user = current_user
    # user = User.find_by(decode_token["user_id "])
    # byebug
    user = User.find_by(username: login_user_params[:username])
    if user && user.authenticate(login_user_params[:password])
      # issue_token({user_id: user.id })
      token = JWT.encode({ user_id: user.id}, "SECRET")
      render json: { user_id: user, jwt: token }
    else
      render json: {error: " Error on Log In"}, status: 400
    end

  end

  def show
    string = request.authorization

    token = JWT.decode(string, "SECRET")[0]

    id = token['user_id'].to_i
    @user = User.find(id)

    if @user
      render json: { user_id: @user.id, username: @user.username, first_name: @user.first_name}
    else
      render json: {error: "ERROR"}, status: 422
    end

  end

  private

  def login_user_params
    params.require(:user).permit(:username, :password)
  end

end
