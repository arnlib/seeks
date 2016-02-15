class LikesController < ApplicationController
	def create
		secret = Secret.find(params['secret_id'])
		like = Like.create(user:current_user, secret: secret)
		redirect_to :back
	end
end
