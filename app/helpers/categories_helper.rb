module CategoriesHelper
	def current_category
		@current_category = Category.find(params[:id])
	end
end