class SessionsController < ApplicationController

	def home
		#Home Page
	end

	def profile
		#Profile Page
	end

	def setting
		#Setting Page
	end

	def login
		#Login Form
	end

	def new
	end

	def create
		user = User.find_by_username(params[:username])
		binding.pry
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to 'login'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/login'
	end


end
