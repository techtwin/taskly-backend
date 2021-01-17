class FriendRequestsController < ApplicationController

  def index
    friendrequests = FriendRequest.all
    render json: friendrequests
  end
end
