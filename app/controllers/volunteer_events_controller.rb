class VolunteerEventsController < ApplicationController

  def index
    volunteerConnection = VolunteerEvent.all

    render json: volunteerConnection
  end



  def create
    userEventConnection = VolunteerEvent.create({volunteer_id: params['currentUser']['id'], event_id: params['event']['id']})

    render json: userEventConnection
  end

  def destroy
    byebug
    VolunteerEvent.find(params[:id]).destroy

    render json
  end

end
