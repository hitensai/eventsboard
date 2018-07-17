class CommentsController < ApplicationController
	before_action :set_event
	before_action :authenticate_user!
	skip_after_action :verify_authorized

def create
 @comment = @event.comments.build(comment_params)
 @comment.author = current_user

 if @comment.save
 	redirect_to event_path(@comment.event)
 else
 flash.now[:alert] = "Comment has no been created"
 render "events/show"	
end	
end


private

def set_event
@event = Event.find(params[:event_id])
end	

def comment_params
	params.require(:comment).permit(:body)
end	
end
