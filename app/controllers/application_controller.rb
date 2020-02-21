class ApplicationController < ActionController::Base
  before_action :authorized

  secret = 'flibbertigibbet'

  def issue_token
    JWT.encode({user: @user.id}, secret, 'HS256')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, secret, true, {:alg => 'HS256'})
      rescue JWT::DecodeError
        [{error: 'Invalid Token'}]
      end
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
    render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
  end

end
