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
	  @user = User.find_by(username: params[:session][:username].downcase)
      if @user && @user.authenticate(params[:session][:password])
      	session[:user_id] = @user.id
        redirect_to users_path#, #flash.notice = "Welcome, #{@user[:username]}!"
      else
        flash[:danger] = 'Invalid email/password combination' # Not quite right!
        render 'new'
      end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/login'
	end


end
