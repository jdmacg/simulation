class TradeRequest < ApplicationRecord
	# belongs_to :requester, class_name: "Team"
	# belongs_to :requestee, class_name: "Team"
	validate :property_or_money_outgoing
	validate :property_or_money_incoming
	validates :offeror_id, presence: true
	validates :offeree_id, presence: true

	def execute_trade
		offeror = Team.find(self.offeror_id)
		offeree = Team.find(self.offeree_id)
		outgoing_properties = self.outgoing_properties
		incoming_properties = self.incoming_properties
		outgoing_cash = self.outgoing_cash
		incoming_cash = self.incoming_cash
		swap_properties(offeror, outgoing_properties, offeree, incoming_properties)
		swap_cash(offeror, offeree, outgoing_cash, incoming_cash)
	end

	def validTrade
		return false if !self.cashValid
		return false if !TradeRequest.tradeable(self.incoming_properties)
		return false if !TradeRequest.tradeable(self.outgoing_properties)
		return false if !self.propertiesValid
		return true
	end

	def propertiesValid
		offeror = Team.find(self.offeror_id)
		offeree = Team.find(self.offeree_id)
		binding.pry()
		if incoming_properties
			incoming_properties.each do |prop|
				property = Property.find(prop.to_i)
				return false if property.team_id != offeree.id
			end
		end
		if outgoing_properties
			outgoing_properties.each do |prop|
				property = Property.find(prop.to_i)
				return false if  property.team_id != offeror.id
			end
		end
		return true
	end




	def cashValid
		if self.incoming_cash
			if ! self.incoming_cash.between?(0,1000000000) 
				return false
			end
			if self.incoming_cash > Team.find(self.offeree_id).cash_balance
				return false
			end
		end
		if self.outgoing_cash
			if ! self.outgoing_cash.between?(0,1000000000)
				return false
			end
			if self.outgoing_cash > Team.find(self.offeror_id).cash_balance
				return false
			end
		end
		return true
	end


	def swap_cash(u1, u2, c1, c2)
		if c1 
			u1.cash_balance -= c1 
			u2.cash_balance += c1
		end
		if c2 
			u2.cash_balance -= c2 
			u1.cash_balance += c2
		end
		u2.save!
		u1.save!
	end

	def property_or_money_outgoing
		if (!outgoing_properties && !outgoing_cash)
			errors[:base] << "Specify properties, cash, or both."
		end
	end

	def swap_properties(offeror, offeror_properties, offeree, offeree_properties)
		pass_and_delete_properties(offeror_properties, offeror, offeree)
		pass_and_delete_properties(offeree_properties, offeree, offeror)
	end

	def pass_and_delete_properties(props, sender, receiver)
		if (props)
			props.each do |prop|
				property = Property.find(prop)
				receiver.properties << property
				sender.properties.delete(Property.find(property.id))
			end
			receiver.save!
			sender.save!
		end
	end

	def property_or_money_incoming
		if (!incoming_properties == 0 && !incoming_cash)
			errors[:base] << "Specify properties, cash, or both."
		end
	end

	def self.getProperties(props)
		return_props = []
		props.each do |prop|
			return_props << Property.find(prop.to_i)
		end
		return return_props
	end

	def self.getOtherParty(tr, id)
		(tr.offeror_id == id) ? tr.offeree_id : tr.offeror_id
	end

	def self.tradeable(props)
		tradeable = true
		if (props)
			props.each do |prop|
				property = Property.find(prop)
				tradeable = !property.developed?
			end
		end
		return tradeable
	end

end
