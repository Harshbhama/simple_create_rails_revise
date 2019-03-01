class PostsController < ApplicationController

	def index

		@posts = Post.all
		@post = Post.new
	end

	def create

		post = Post.create(title: params[:post][:title], content: params[:post][:content])

	end
	def new

		@post = Post.new

	end
end
