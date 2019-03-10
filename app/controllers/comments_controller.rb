class CommentsController < ApplicationController

	def create

		@comment = Comment.create(content: params[:comment][:content], post_id: params[:comment][:post_id], user_id: current_user.id)
		redirect_to root_path


		# UserMailer.new_comment(@comment.id).deliver_now

		Resque.enqueue(NewCommentEmail, @comment.id)
	end
end
