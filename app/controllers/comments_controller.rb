class CommentsController < ApplicationController

	def create

		comment = Comment.create(content: params[:comment][:content], post_id: params[:comment][:post_id])
		redirect_to root_path

	end
end
