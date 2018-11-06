class EventsController < ApplicationController
  def index
    @events = Event.all
    set_response
  end
  
  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    set_response
  end

  def update
  end

  def create
    @event = Event.new(params.require(:event).permit(:name, :held_at))
    if @event.save
      redirect_to events_path, notice: "作成しました"
    else
      render :create_event
     end
  end

  def delete
    @event = Event.find(params[:id])
    if @event.destroy!
      redirect_to events_path, notice: "削除しました"
    end
  end

  private
  def set_response
    respond_to do |f|
      f.html
      f.json
    end
  end

end
