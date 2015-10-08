class ProfilesController < ApplicationController
	def show
		@user = User.find_by_id(session[:user_id])
	end
end