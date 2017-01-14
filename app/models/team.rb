class Team < ApplicationRecord
  has_many :users
  has_many :properties
  has_many :trade_requests

  def calcIncentives
  	results = Hash.new
  	results[:countPropertyType1] = Property.where(:team_id => self.id, :property_type => 1).count
  	results[:countPropertyType2] = Property.where(:team_id => self.id, :property_type => 2).count
  	results[:countPropertyType3] = Property.where(:team_id => self.id, :property_type => 3).count
  	results[:countPropertyType4] = Property.where(:team_id => self.id, :property_type => 4).count
  	results[:countProvince1] = Property.where(:team_id => self.id, :province => 1).count
  	results[:countProvince2] = Property.where(:team_id => self.id, :province => 2).count
  	results[:countProvince3] = Property.where(:team_id => self.id, :province => 3).count
  	results[:countProvince4] = Property.where(:team_id => self.id, :province => 4).count
  	results[:countProvince5] = Property.where(:team_id => self.id, :province => 5).count
  	results[:countProvince6] = Property.where(:team_id => self.id, :province => 6).count
  	results[:tradedProperties] = 0
  	TradeRequest.where(:completed => true, :offeror_id => self.id).each do |request|
  		results[:tradedProperties] += request.incoming_properties.size
  	end
  	TradeRequest.where(:completed => true, :offeree_id => self.id).each do |request|
  		results[:tradedProperties] += request.outgoing_properties.size
  	end
  	results[:developments] = Property.where(:team_id => self.id, :developed => true).count

  	return results
  end
end
