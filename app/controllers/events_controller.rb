class EventsController < ApplicationController

  def index
    events = Event.all

    render json: events
  end

  def create
    name = params['name']
    focus = params['focus']
    location = params['location']
    start_time = params['start_time']
    end_time = params['end_time']
    description = params['description']
    host_id = params['host_id']

    newEvent = Event.create({name: name, focus: focus, location: location, start_time: start_time, end_time: end_time, description: description, host_id: host_id})
    render json: newEvent
  end

end
