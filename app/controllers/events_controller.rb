class EventsController < ApplicationController
  def index
    @events = Event.all
    set_response
  end

  def show
    @event = Event.find(params[:id])
    set_response
  end

  def update
  end

  def create
  end

  def delete
  end

  private
  def set_response
    respond_to do |f|
      f.html
      f.json
    end
  end
end
