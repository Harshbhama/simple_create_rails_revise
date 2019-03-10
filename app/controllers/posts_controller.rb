class PostsController < ApplicationController

	def index

		@posts = Post.all
		@post = Post.new

		@comment = Comment.new
		@image = Image.new
		@images = Image.all
	end

	def create

		post = Post.create(title: params[:post][:title], content: params[:post][:content], user_id: current_user.id)
		redirect_to root_path

	end
	
	def destroy
		@post = Post.find_by(params[:id])
		@post.destroy

		redirect_to root_path
							
	end
end
