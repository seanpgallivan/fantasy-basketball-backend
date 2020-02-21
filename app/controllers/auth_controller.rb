class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def show
    @user = User.find_by(id: current_user.id)
    if logged_in?
      render json: {user: UserSerializer.new(user), jwt: issue_token}, status: :accepted
    else
      render json: {error: 'No user could be found'}, status: :unauthorized
    end
  end

  def create
    @user = User.find_by(username: login_params[:username])
    if @user && @user.authenticate(login_params[:password])
      render json: {user: UserSerializer.new(user), jwt: issue_token}, status: :accepted
    else
      render json: {message: 'Invalid username or password'}, status: :unauthorized
    end
  end
 
  private
 
  def login_params
    params.require(:user).permit(:username, :password)
  end

end