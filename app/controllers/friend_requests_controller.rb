class FriendRequestsController < ApplicationController

  # def index
  #   friendrequests = FriendRequest.all
  #   render json: friendrequests
  # end

  def create
    friendrequest = FriendRequest.create!(friendrequest_params)
    render json: { friendrequest: FriendRequestSerializer.new(friendrequests)}, status: :accepted
  end

  def destroy 
    arr = params[:id].split("&")
    requestor_id = arr[0]
    receiver_id = arr[1]
    request = FriendRequest.find_by(requestor_id: requestor_id, receiver_id: receiver_id)
    request.destroy
  end

  private

  def friendrequest_params 
    params.permit(:requestor_id, :receiver_id)
  end
end
