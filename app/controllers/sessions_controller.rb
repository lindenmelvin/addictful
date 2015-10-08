class SessionsController < ApplicationController
	def new
		@session = {
			email: '',
			password: ''
		}
	end

	def create
		user = User.find_by_email(params[:session][:email])
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, :notice => "You have been logged out."
	end
end