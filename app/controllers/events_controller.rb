class EventsController < ApplicationController
  before_action :get_event, only: [:show, :edit]

  def index
    @events = Event.all
  end

  def show; end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      redirect_to @event
    else
      render :new
    end
  end

  def edit; end

  def update
    @event.update(event_params)
    if @event.valid?
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def get_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :date, :budget, :location, :description)
  end
end
