class PostsController < ApplicationController
	def index
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		post_parameters = params.require(:post).permit(:title, :body)
		@post = Post.create(post_parameters)
		redirect_to post_path(@post)
	end
end