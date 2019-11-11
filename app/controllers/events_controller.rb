class EventsController < ApplicationController

  def index
    events = Event.all

    render json: events
  end

  def create
    name = params['name']
    focus = params['focus']
    location = params['location']
    date = params['date']
    start_time = params['start_time']
    end_time = params['end_time']
    description = params['description']
    host_id = params['host_id']

    newEvent = Event.create({name: name, focus: focus, location: location, date: date, start_time: start_time, end_time: end_time, description: description, host_id: host_id})

    render json: newEvent
  end

  def destroy
    event = Event.find(params[:id]).destroy

    allConnects = VolunteerEvent.all
    connects = allConnects.select do |con|
      con.event_id == params[:id].to_i
    end
    connects.each do |con|
      con.destroy
    end
    render json: {event: event, connect: connects}
  end



end
