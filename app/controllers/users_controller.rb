class UsersController < ApplicationController

  def new
      @user = User.new
  end

   def create
  	@user = User.new(user_params)
    @user.team_id = 1
    # TODO Update to even dist
  	if @user.save
      session[:user_id] = @user.id
    else
      # TODO: ERROR HANDLING
    end
    redirect_to properties_path, notice: "Welcome!"
  end

  def show
    @user = User.find(session[:user_id])
    @team = Team.find(@user.team_id)
    @properties = Property.where(team_id: @team.id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
