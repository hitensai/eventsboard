class Admin::ApplicationController < ApplicationController
  before_action :authorize_admin!

  skip_after_action :verify_authorized

  def index
    @users = User.all
  	@events = Event.all
    @categories = Category.all
  end



  private
  def authorize_admin!
  authenticate_user!

  unless current_user.admin?
  	redirect_to root_path alert: "you must be an admin to that."
   end
  end
end
