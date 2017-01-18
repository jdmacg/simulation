class Property < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :property_type
  belongs_to :development

  def adjust_property_value(prop, dev)

  end

  def develop(id)
  	message = ''
    @team = Team.find(id)
  	if !(self.development)
  		message << 'No Development Found'
  	else
      @team.drop_cash_balance(self.development.cost)
      self.in_development = true
      self.developed = true
      self.value += self.development.value
      self.development.used = true
      message << 'Development Initiated Successfully'
    end
  end



end
