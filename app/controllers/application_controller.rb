class ApplicationController < ActionController::API

  def authorize
    @user = AuthorizeRequest.new(request.headers).user
    unless @user
      render json: { error: "Unauthorized request" }, status: :unauthorized
    end
  end

end
