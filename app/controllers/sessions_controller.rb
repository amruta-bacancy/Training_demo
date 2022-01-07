class SessionsController < ApplicationController
	def new
	end
	def create
		user = User.find_by(username: params[:session][:username])
		binding.pry
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:success] = "you have successfully logged in"
			redirect_to root_path
		else
			flash.now[:error] = "there was something wrong"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil 
		flash[:success] = "you have successfully log out"
		redirect_to login_path
	end

end
