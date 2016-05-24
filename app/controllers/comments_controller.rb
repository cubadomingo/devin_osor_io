class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:destroy]

	def create
    @post = Post.find(params[:comment][:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:success] = "Comment created!"
      redirect_to :back
    else
      flash[:danger] = "Both fields are required!"
      redirect_to :back
    end
  end

  def destroy
	@comment = Comment.find(params[:id])
		if @comment.destroy
			flash[:success] = "comment deleted"
			redirect_to :back
		end
	end


	private

    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end
