class CategoriesController < ApplicationController
	before_action :logged_in_user, only: [:new, :create, :destroy, :edit, :update]

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	  @posts = @category.posts
	end

	def new
		@category = Category.new
	end

	def create
		@category = current_user.categories.build(category_params)
		 if @category.save
      flash[:success] = "New category created!"
      redirect_to categories_path
    else
      render 'new'
    end
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:success] = "Category succesfully edited!"
      redirect_to categories_path
    else
      render 'edit'
    end
  end

	def destroy
		@category = Category.find(params[:id])
		if @category.destroy
			flash[:success] = "Category deleted"
			redirect_to categories_path
		end
	end

	private

    def category_params
      params.require(:category).permit(:name)
    end
end