class VolunteerEventsController < ApplicationController

  def create
    userEventConnection = VolunteerEvent.create({volunteer_id: params['currentUser']['id'], event_id: params['event']['id']})

    render json: userEventConnection
  end

end
