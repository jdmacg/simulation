class Property < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :property_type, optional: true
  belongs_to :development


  def adjust_property_value(prop, dev)
      
  end

  def develop
  	message = ''
  	if property.developemt.empty?
  		return 'No Development Found'
  	end
  	if self.team.cash_balance >= self.development.cost
  	  if property.developed = false
  	  	if property.in_development = false
  	  		self.team.cash_balance -= self.development.cost
  	  		property.in_development = true
  	  		message = "Development Successful"
  	  	else
  	  	  message = 'Property already in development'
  	  	end
  	  else 
  	  	message = 'Property already in development'
  	  end
  	else
  	  message = 'Insufficient funds'
  	end
  	return message
  end

end
