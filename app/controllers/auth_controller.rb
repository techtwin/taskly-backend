class AuthController < ApplicationController

  def register
    register_params = params.permit(:username, :name, :password)
    user = User.create(register_params)
    if user.valid?
      secret = Rails.application.secrets.secret_key_base
      token = JWT.encode({ user_id: user.id }, secret, "HS256")
      render json: { user: UserSerializer.new(user), token: token }, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login 
    user = User.find_by(username: params[:username])
    if (user && user.authenticate(params[:password]))
      secret = Rails.application.secrets.secret_key_base
      token = JWT.encode({ user_id: user.id }, secret, "HS256")
      render json: { user: UserSerializer.new(user), token: token } 
    else
      render json: { errors: "Invalid username or password" }, status: :unauthorized
    end
  end

end
