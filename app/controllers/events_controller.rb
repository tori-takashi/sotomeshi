class EventsController < ApplicationController
  def index
    @events = Event.all
    set_response
  end

  def show
    @event = Event.find(params[:id])
    set_response
  end
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:name, :held_at))
    if @event.save
      redirect_to events_path
    else
      render :create_event
     end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    update_data = params.require(:event).permit(:name, :held_at)
    if @event.update!(update_data)
      redirect_to events_path
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy!
      redirect_to events_path
    end
  end

  private
  #responseだと別メソッドをオーバーライドしてしまう
  def set_response
    respond_to do |f|
      f.html
      f.json
    end
  end

end
