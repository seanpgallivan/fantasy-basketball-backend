class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create, :show]

  def show
    if logged_in?
      render json: {user: UserSerializer.new(@user), jwt: issue_token}, status: :accepted
    else
      render json: {error: 'Invalid token'}, status: :unauthorized
    end
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {user: UserSerializer.new(@user), jwt: issue_token}, status: :accepted
    else
      render json: {error: 'Invalid username or password'}, status: :unauthorized
    end
  end

end