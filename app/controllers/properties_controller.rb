class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end
  # GET /properties/1
  # GET /properties/1.json
  def show
    # @properties = Property.where(team_id: params[:id].to_i)
    # render json: @properties
  end

  def new
    @property = Property.new
  end

  def edit
  end

  def calculateIncentives
    #
    # Property.where(:team_id => 'x', :property_type => 'Multi-Res').count >= 7
    # Property.where(:team_id => 'x', :property_type => 'Industrial').count >= 4
    # Property.where(:team_id => 'x', :property_type => 'Office').count >= 3
    # Property.where(:team_id => 'x', :property_type => 'Retail').count >= 7
    # Property.where(:team_id => 'x', :location => 'Alberta').count >= 4
    # Property.where(:team_id => 'x', :location => 'BC').count >= 4
    # Property.where(:team_id => 'x', :location => 'NS').count >= 3
    # Property.where(:team_id => 'x', :location => 'Ontario').count >= 3
    # Property.where(:team_id => 'x', :location => 'Quebec').count >= 3
    # Property.where(:team_id => 'x', :location => 'Saskatchewan').count >= 2
    # #then goes to acquisitions??
    # TradeRequest.where(:requester => 'x',:completed => 'true').or(:requestee => 'x',:completed => 'true').count >= 10,20,30
    # Property.where(:team_id => 'x', :developed => 'true').count >= 2,5,8
    # Team.maximum(:cash_balance)
    # Team.minimum(:cash_balance)
    #most acquisitions, developments, properties, most x type properties
  # POST /properties
  # POST /properties.json
  end

  def develop

    @property = Property.find(params[:id])
    binding.pry()
    flash[:notice] = @property.develop()
    binding.pry()
    redirect_to users_path
    #assume check for development is happening in front end. need to add this
    # Make sure team can develop (cash balance, property is already developed)
    # If possible
    #   Drop team's cash balance
    #   Change properties development field to true
    #   Call a method that updates a property's cash value after development_time amount of time
    #^^^^^^^^^^should happen in the time update method in admin panel
    #   ---> adjust_property_value(@property, @development)
    # NOTE: MUST MAKE SURE THAT ALL TRADE REQUESTS MAKE CHECKS TO ENSURE PROPERTY ISNT DEVELOPED
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      format.html { redirect_to @property, notice: 'Property was successfully created.' }
      format.json { render :show, status: :created, location: @property }
    else
      format.html { render :new }
      format.json { render json: @property.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    if @property.update(property_params)
      format.html { redirect_to @property, notice: 'Property was successfully updated.' }
      format.json { render :show, status: :ok, location: @property }
      format.html { render :edit }
    end
  end
  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:team_id, :property_type, :property_values_id, :in_development, :development_id, :city, :province)
    end
end
