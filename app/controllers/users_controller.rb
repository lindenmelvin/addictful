class UsersController < ApplicationController

	def show
	end

	def new
		if(current_user)
			redirect_to profile_path(current_user), :notice => "You are already logged in, #{current_user.first_name}"
		else
			@user = User.new
		end
	end

	def create
		user_parameters = params.require(:user)
														.permit(:first_name, 
																		:last_name,
																		:password,
																		:password_confirmation)

		user = User.create(user_parameters)

		if user && user.authenticate(params[:user][:password])
		  session[:user_id] = user.id
		  redirect_to profile_path(user), :notice => "Welcome back, #{user.first_name}"
		else
	    flash.now.alert = "Invalid email or password"
	    @user = User.new
	    render "new"
	  end

	end
end