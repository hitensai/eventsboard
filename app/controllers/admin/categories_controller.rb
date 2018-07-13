class Admin::CategoriesController < Admin::ApplicationController
	before_action :set_category, only: [:edit, :update, :destroy]
	def index
		@categories = Category.all
	

	end

	def new
	@category = Category.new

	end


	def create
		@category = Category.new(category_params)

		if @category.save
			flash[:notice] = "Category saved"
			redirect_to admin_categories_path
		else
		flash.now[:alert] = "Category has nptbeen created"
		render "new"
		end	

	

	end

	def edit

	end
		
	def update
		 if @category.update(category_params)
    	   flash[:notice] = "Event updated"
    	    redirect_to admin_categories_path
         else 
    	   flash.now[:alert] = "Event not updated"
    	   render "edit"
    end	
	

	end

	def destroy

		@category.destroy
	flash[:notice] = "Event deleted"
	redirect_to admin_categories_path
	

	end	
	private

	def category_params

	params.require(:category).permit(:name, :summary)
	end	

	def set_category
     @category = Category.find(params[:id])
	end	

end
