class NewCommentEmail

	@queue = :emails

	def self.perform(comment_id)

		UserMailer.new_comment(comment_id).deliver_now

	end

end