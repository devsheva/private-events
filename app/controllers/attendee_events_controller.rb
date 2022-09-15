class AttendeeEventsController < ApplicationController
  before_action :authenticate_user!

  def create
    event = Event.find(params[:event_id])
    attendee_event = AttendeeEvent.new(event_id: event.id, user_id: current_user.id)

    if attendee_event.save
      redirect_to user_path(current_user.id)
    else
      redirect_to event_path(event)
    end
  end

end
