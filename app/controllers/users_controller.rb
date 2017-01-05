class UsersController < ApplicationController

  def new
      @user = User.new
  end

   def create
  	@user = User.new(user_params)
  	if @user.save
      binding.pry
      session[:user_id] = @user.id
    else
      # TODO: ERROR HANDLING
    end
    redirect_to properties_path, notice: "Welcome!"
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
