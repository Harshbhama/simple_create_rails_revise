class ImagesController < ApplicationController

	def create

		image = Image.create(avatar: params[:image][:avatar], post_id: params[:image][:post_id])
		redirect_to root_path

	end
end
