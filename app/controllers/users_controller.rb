class UsersController < ApplicationController

  def new
      @user = User.new
  end

   def create
  	@user = User.new(user_params)
  	if @user.save
      session[:user_id] = @user.id
    else
      redirect_to '/'
    end
  end

  private

	    # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
