class Admin::PropertiesController < Admin::ApplicationController
  before_action :require_admin

  def index
    @properties = Property.all
  end

  def shock1
  	Property.all.each do |prop|
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
  	  	  prop.value = prop.value *1.1
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
end
