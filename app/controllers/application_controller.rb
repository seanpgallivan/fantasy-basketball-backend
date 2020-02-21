class ApplicationController < ActionController::Base
  before_action :authorized
  protect_from_forgery unless: -> { request.format.json? }

  # secret = 'flibbertigibbet'

  def issue_token
    JWT.encode({user: @user.id}, 'flibbertigibbet', 'HS256')
  end

  def token
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(token, 'flibbertigibbet', true, {:alg => 'HS256'})
    rescue JWT::DecodeError
      [{error: 'Invalid Token'}]
    end
  end

  def current_user
    user_id = decoded_token[0]['user']
    if user_id
      @user = User.find_by(id: user_id)
    end
  end
 
  def logged_in?
    !!current_user
  end

  def authorized
    render json: {error: 'Please log in'}, status: :unauthorized unless logged_in?
  end

end
