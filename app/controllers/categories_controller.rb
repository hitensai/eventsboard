class CategoriesController < ApplicationController
    before_action :set_category, only: [:show]
	skip_after_action :verify_authorized


def show
	@categories = Category.order(:name)	
	@category_events = @category.events.order(created_at: :desc)
end

private
   def set_category
     @category = Category.find(params[:id])
    end	

end
