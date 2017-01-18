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
    @total_property_value = @team.calcTotalPropertyValue()
  end

  def develop
    @property = Property.find(params[:id])
    flash = {}
    if @property.development.used
      flash[:error] = "You have already developed this property" #TODO not displaying
      redirect_to users_path
    elsif !(Team.find(current_user.team_id).can_drop_cash_balance(@property.development.cost))
      binding.pry
      flash[:error] = "You cannot afford to develop this property" #TODO not displaying
      redirect_to users_path
    else
      message = @property.develop(current_user.team_id)
      @development = @property.development
      @development.save!
      flash[:success] = message
      flash[:notice] =  'Development was successfully initiated.'
      redirect_to users_path
      #respond_to do |format|
        #format.html { redirect_to @property, notice: 'Development was successfully initiated.' } #TODO not displaying
        #format.json { render :show, status: :created, location: @property }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
