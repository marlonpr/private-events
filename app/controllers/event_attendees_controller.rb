class EventAttendeesController < ApplicationController
  before_action :set_event

  def create
    current_user.attended_events << @event
    redirect_to @event, notice: 'You have successfully joined the event.'
  end

  def destroy
    current_user.attended_events.delete(@event)
    redirect_to @event, notice: 'You have successfully left the event.'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
