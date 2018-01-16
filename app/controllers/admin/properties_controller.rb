class Admin::PropertiesController < Admin::ApplicationController
  before_action :require_admin

  def index
    @properties = Property.all
  end

  def change_team
    user = User.find(session[:user_id])
    user.team_id = params[:team_id]
    user.save!
    redirect_to admin_properties_path, :notice => 'changed teams'
  end

  def shock1
  	Property.all.each do |prop|
      puts prop.developed
  	  if prop.developed == false
  	  	if prop.province == 'Alberta'
  	  	  prop.value = prop.value * 0.9
  	  	  prop.save!
  	  	elsif prop.province == 'Quebec'
  	  	  prop.value = prop.value *  0.9
  	  	  prop.save!
  	  	else
  	  	  prop.value = prop.value * 1.03
  	  	  prop.save!
  	  	end
      end
	  end
    redirect_to admin_properties_path, :notice => 'shocked 1 properly'
	end


  def shock2
  	Property.all.each do |prop|
  	  if prop.developed == false
  	  	if prop.city == 'Toronto'
  	  	  prop.value = prop.value * 1.1
  	  	  prop.save!
  	  	elsif prop.city == 'Vancouver'
  	  	  prop.value = prop.value * 1.1
  	  	  prop.save!
  	  	end
  	  	if prop.property_type_id == 1
  	  	  prop.value = prop.value * 1.08
  	  	  prop.save!
  	  	elsif prop.property_type_id == 2
  	  	  prop.value = prop.value * 1.12
  	  	  prop.save!
  	  	elsif prop.property_type_id == 3
  	  	  prop.value = prop.value * 1.1
  	  	  prop.save!
  	  	elsif prop.property_type_id == 4
  	  	  prop.value = prop.value * 1.15
  	  	  prop.save!
  	  	end
      end
	  end
    redirect_to admin_properties_path, :notice => 'shocked 2 properly'
	end


  def shock3
  	Property.all.each do |prop|
  	  if prop.developed == false
  	  	prop.value = prop.value * 0.87
  	  	prop.save!
  	  end
  	end
	redirect_to admin_properties_path, :notice => 'shocked 3 properly'
  end

  def shock4
  	Property.all.each do |prop|
  	  if prop.developed == false
  	  	if prop.city == 'Toronto'
  	  	  prop.value = prop.value * 1.16
  	  	  prop.save!
  	  	elsif prop.city == 'Vancouver'
  	  	  prop.value = prop.value * 1.16
  	  	  prop.save!
  	  	end
  	  	if prop.province == 'Alberta'
  	  	  prop.value = prop.value * 1.22
  	  	  prop.save!
  	  	elsif prop.province == 'Quebec'
  	  	  prop.value = prop.value * 1.22
  	  	  prop.save!
  	  	end
  	  	if prop.property_type_id == 1
  	  	  prop.value = prop.value * 1.03
  	  	  prop.save!
  	  	elsif prop.property_type_id == 2
  	  	  prop.value = prop.value * 1.04
  	  	  prop.save!
  	  	elsif prop.property_type_id == 3
  	  	  prop.value = prop.value * 1.05
  	  	  prop.save!
  	  	elsif prop.property_type_id == 4
  	  	  prop.value = prop.value * 1.07
  	  	  prop.save!
  	  	end
      end
	  end
    redirect_to admin_properties_path, :notice => 'shocked 4 properly'
	end

  def end_game
    Incentive.all.each do |incentive|
      @calculations = Hash[@calculations.sort_by {|k,v| k.to_s.to_i }]
      binding.pry
      # @calculations.each do |team,values|
      #   incentive.incentive_type == 1 ? values[incentive.calculation_key.to_sym] :  number_to_currency(values[incentive.calculation_key.to_sym])
      # end
    end
  end

end
