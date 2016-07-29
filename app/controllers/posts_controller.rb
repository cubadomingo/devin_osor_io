class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy, :update]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.friendly.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
    @categories = Category.all.map { |c| [ c.name, c.id ] }
  end

  def create
  	@post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:success] = "Post created!"
      redirect_to blog_path
    else
      render 'new'
    end
  end

  def edit
    @post = Post.friendly.find(params[:id])
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def update
    @post = Post.friendly.find(params[:id])
    @post.category_id = params[:category_id]
    if @post.update_attributes(post_params)
      flash[:success] = "Post succesfully edited!"
      redirect_to blog_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.friendly.find(params[:id])
    if @post.destroy
      flash[:success] = "Post succesfully deleted!"
      redirect_to blog_path
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :body, :category_id)
    end
end
