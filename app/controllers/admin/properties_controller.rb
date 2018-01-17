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
    lowest_end_cash = []
    highest_end_prop = []
    most_acquisitions = []
    most_developments = []
    most_props = []
    most_ind_props = []
    most_mr_props = []
    most_office_props = []
    most_retail_props = []
    Team.all.each do |team|
      @incentives = team.calcIncentives();
      @incentives_list = Incentive.all
      if @incentives[:propertyType1]
        team.cash_balance += @incentives_list.where(:calculation_key => "propertyType1Count")[0].value
      end
      if @incentives[:propertyType2]
        team.cash_balance += @incentives_list.where(:calculation_key => "propertyType2Count")[0].value
      end
      if @incentives[:propertyType3]
        team.cash_balance += @incentives_list.where(:calculation_key => "propertyType3Count")[0].value
      end
      if @incentives[:propertyType4]
        team.cash_balance += @incentives_list.where(:calculation_key => "propertyType4Count")[0].value
      end
      if @incentives[:province1]
        team.cash_balance += @incentives_list.where(:calculation_key => "province1Count")[0].value
      end
      if @incentives[:province2]
        team.cash_balance += @incentives_list.where(:calculation_key => "province2Count")[0].value
      end
      if @incentives[:province3]
        team.cash_balance += @incentives_list.where(:calculation_key => "province3Count")[0].value
      end
      if @incentives[:province4]
        team.cash_balance += @incentives_list.where(:calculation_key => "province4Count")[0].value
      end
      if @incentives[:province5]
        team.cash_balance += @incentives_list.where(:calculation_key => "province5Count")[0].value
      end
      if @incentives[:province6]
        team.cash_balance += @incentives_list.where(:calculation_key => "province6Count")[0].value
      end
      if @incentives[:traded1]
        team.cash_balance += @incentives_list.where(:calculation_key => "traded1Count")[0].value
      end
      if @incentives[:traded2]
        team.cash_balance += @incentives_list.where(:calculation_key => "traded2Count")[0].value
      end
      if @incentives[:traded3]
        team.cash_balance += @incentives_list.where(:calculation_key => "traded3Count")[0].value
      end
      if @incentives[:developments1]
        team.cash_balance += @incentives_list.where(:calculation_key => "developments1Count")[0].value
      end
      if @incentives[:developments2]
        team.cash_balance += @incentives_list.where(:calculation_key => "developments2Count")[0].value
      end
      if @incentives[:developments3]
        team.cash_balance += @incentives_list.where(:calculation_key => "developments3Count")[0].value
      end
      lowest_end_cash << @incentives[:cashBalance]
      highest_end_prop << @incentives[:totalPropertyValue]
      most_acquisitions << @incentives[:acquisitions_made]
      most_developments << @incentives[:developmentsCount]
      most_props << @incentives[:propertiesCount]
      most_ind_props << @incentives[:industrial_properties]
      most_mr_props << @incentives[:multi_res_properties]
      most_office_props << @incentives[:office_properties]
      most_retail_props << @incentives[:retail_properties]
    end
    lowest_end_cash_team = lowest_end_cash.rindex(lowest_end_cash.max)+1
    highest_end_prop_team = highest_end_prop.rindex(highest_end_prop.max)+1
    most_aquisitions_team = most_acquisitions.rindex(most_acquisitions.max)+1
    most_developments_team = most_developments.rindex(most_developments.max)+1
    most_props_team = most_props.rindex(most_props.max)+1
    most_ind_props_team = most_ind_props.rindex(most_ind_props.max)+1
    most_mr_props_team = most_mr_props.rindex(most_mr_props.max)+1
    most_office_props_team = most_office_props.rindex(most_office_props.max)+1
    most_retail_props_team = most_retail_props.rindex(most_retail_props.max)+1
    Team.all.where(:id => lowest_end_cash_team)[0].cash_balance += Incentive.all.where(:calculation_key => "cashBalance")[0].value
    Team.all.where(:id => highest_end_prop_team)[0].cash_balance += Incentive.all.where(:calculation_key => "totalPropertyValue")[0].value
    Team.all.where(:id => most_aquisitions_team)[0].cash_balance += Incentive.all.where(:calculation_key => "tradedPropertiesCount")[0].value
    Team.all.where(:id => most_developments_team)[0].cash_balance += Incentive.all.where(:calculation_key => "developmentsCount")[0].value
    Team.all.where(:id => most_props_team)[0].cash_balance += Incentive.all.where(:calculation_key => "propertiesCount")[0].value
    Team.all.where(:id => most_ind_props_team)[0].cash_balance += Incentive.all.where(:calculation_key => "propertyType2Count")[0].value
    Team.all.where(:id => most_mr_props_team)[0].cash_balance += Incentive.all.where(:calculation_key => "propertyType1Count")[0].value
    Team.all.where(:id => most_office_props_team)[0].cash_balance += Incentive.all.where(:calculation_key => "propertyType3Count")[0].value
    Team.all.where(:id => most_retail_props_team)[0].cash_balance += Incentive.all.where(:calculation_key => "propertyType4Count")[0].value
    redirect_to admin_properties_path, :notice => 'Ended game and updated incentives'
  end
end
