class PostsController < ApplicationController

	def index

		@posts = Post.all
		@post = Post.new

		@comment = Comment.new
	end

	def create

		post = Post.create(title: params[:post][:title], content: params[:post][:content])
		redirect_to root_path

	end
	
	def destroy
		@post = Post.find_by(params[:id])
		@post.destroy

		redirect_to root_path
							
	end
end
