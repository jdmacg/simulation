class TradeRequest < ApplicationRecord
	# belongs_to :requester, class_name: "Team"
	# belongs_to :requestee, class_name: "Team"

	def self.getProperties(props)
		return_props = []
		props.each do |prop|
			return_props << Property.find(prop.to_i)
		end
		return return_props
	end

	def self.getOtherParty(tr, id)
		(tr.offeror_id == id) ? offeree_id : id
	end


end
