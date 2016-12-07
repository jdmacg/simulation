class UsersController < ApplicationController

  before_filter :save_login_state, :only => [:new, :create]

  def new
      #Signup Form
      @user = User.new     
  end

   def create
    	@user = User.new(user_params[:user])
    	if @user.save
    		flash[:notice] = "You Signed up successfully"
        flash[:color]= "valid"
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
      end
      render "new"
    end

    private

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def user_params
	      params.require(:user).permit(:username, :password, :password_confirmation,:commit)
	    end
end