class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def show
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {user: UserSerializer.new(@user), jwt: issue_token}, status: :created
    else
      render json: {error: 'Failed to create user'}, status: :not_acceptable
    end
  end
 
  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :password, :password_confirmation)
  end

end