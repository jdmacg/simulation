class Team < ApplicationRecord
  has_many :users
  has_many :properties
  has_many :trade_requests

  def calcIncentives
  	results = Hash.new
  	results[:propertyType1] = false
  	results[:propertyType2] = false
  	results[:propertyType3] = false
  	results[:propertyType4] = false
  	results[:province1] = false
  	results[:province2] = false
  	results[:province3] = false
  	results[:province4] = false
  	results[:province5] = false
  	results[:province6] = false
  	results[:traded1] = false
  	results[:traded2] = false
  	results[:traded3] = false
  	results[:developments1] = false
  	results[:developments2] = false
  	results[:developments3] = false


  	results[:propertyType1Count] = Property.where(:team_id => self.id, :property_type => 1).count
  	results[:propertyType1] = true if results[:propertyType1Count] >= 4
  	results[:propertyType2Count] = Property.where(:team_id => self.id, :property_type => 2).count
  	results[:propertyType2] = true if results[:propertyType2Count] >= 7
  	results[:propertyType3Count] = Property.where(:team_id => self.id, :property_type => 3).count
  	results[:propertyType3] = true if results[:propertyType3Count] >= 3
  	results[:propertyType4Count] = Property.where(:team_id => self.id, :property_type => 4).count
  	results[:propertyType4] = true if results[:propertyType4Count] >= 7
  	results[:province1Count] = Property.where(:team_id => self.id, :province => 'Alberta').count
  	results[:province1] = true if results[:province1Count] >= 4
  	results[:province2Count] = Property.where(:team_id => self.id, :province => 'British Columbia').count
  	results[:province2] = true if results[:province2Count] >= 4
  	results[:province3Count] = Property.where(:team_id => self.id, :province => 'Nova Scotia').count
  	results[:province3] = true if results[:province3Count] >= 3
  	results[:province4Count] = Property.where(:team_id => self.id, :province => 'Ontario').count
  	results[:province4] = true if results[:province4Count] >= 3
  	results[:province5Count] = Property.where(:team_id => self.id, :province => 'Quebec').count
  	results[:province5] = true if results[:province5Count] >= 3
  	results[:province6Count] = Property.where(:team_id => self.id, :province => 'Saskatchewan').count
  	results[:province6] = true if results[:province6Count] >= 2
  	results[:tradedPropertiesCount] = 0
  	TradeRequest.where(:completed => true, :offeror_id => self.id).each do |request|
      if request.incoming_properties
  		  results[:tradedPropertiesCount] += request.incoming_properties.size
      end
  	end
  	TradeRequest.where(:completed => true, :offeree_id => self.id).each do |request|
      if request.outgoing_properties
  		  results[:tradedPropertiesCount] += request.outgoing_properties.size
      end
  	end
  	results[:traded1] = true if results[:tradedPropertiesCount] >= 10
  	results[:traded2] = true if results[:tradedPropertiesCount] >= 20
  	results[:traded3] = true if results[:tradedPropertiesCount] >= 30
  	results[:developmentsCount] = Property.where(:team_id => self.id, :developed => true).count
  	results[:developments1] = true if results[:developmentsCount] > 2
  	results[:developments2] = true if results[:developmentsCount] > 5
  	results[:developments3] = true if results[:developmentsCount] > 8

    results[:totalPropertyValue] = self.calcTotalPropertyValue()
    results[:cashBalance] = self.cash_balance
    self.properties ? results[:propertiesCount] = self.properties.count : results[:propertiesCount] = 0
    results[:acquisitions_made] = 0
    TradeRequest.where(:completed => true, :offeror_id => self.id).each do |request|
      if request.incoming_properties
        results[:acquisitions_made] += request.incoming_properties.size
      end
    end
    results[:industrial_properties] = 0
    results[:multi_res_properties] = 0
    results[:office_properties] = 0
    results[:retail_properties] = 0
    self.properties ? results[:industrial_properties] = self.properties.where(:property_type => 1).count : results[:industrial_properties] = 0
    self.properties ? results[:multi_res_properties] = self.properties.where(:property_type => 2).count : results[:industrial_properties] = 0
    self.properties ? results[:office_properties] = self.properties.where(:property_type => 4).count : results[:industrial_properties] = 0
    self.properties ? results[:retail_properties] = self.properties.where(:property_type => 3).count : results[:industrial_properties] = 0
  	return results
  end

  def calcTotalPropertyValue()
  	sum = 0
  	self.properties.each do |prop|
  		sum += prop.value;
  	end
  	return sum
  end

  def drop_cash_balance(value)
    self.cash_balance -= value
    self.save!
  end

  def can_drop_cash_balance(value)
    self.cash_balance >= value ? true : false
  end
end
