class ApplicationController < ActionController::Base
	
    def index
    @events = Event.all
    
    end	

    def show
        @event = Event.find(params[:id])
	end	

	def new
		@event = Event.new
	end

	def create

	    @event = Event.new(event_params)

	    if @event.save
		flash[:notice] = "Event created"
		redirect_to @event
	    else
		flash.now[:alert] = "Event not created"
		render "new"
	    end	
	end	

	

	def edit
    @event = Event.find(params[:id])
	

	end	

	def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
    	flash[:notice] = "Event updated"
    	redirect_to @event
    else 
    	flash.now[:alert] = "Event not updated"
    	render "edit"
    end	
	end	

	def destroy

	@event = Event.find(params[:id])
	@event.destroy
	flash[:notice] = "Event deleted"
	redirect_to events_path

	end	


		



  private
 
  def event_params
   params.require(:event).permit(:title, :description, :start_date, :end_date, :venue, :location)
  end
end
