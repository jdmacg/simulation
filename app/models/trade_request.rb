class TradeRequest < ApplicationRecord
	# belongs_to :requester, class_name: "Team"
	# belongs_to :requestee, class_name: "Team"
	validate :property_or_money_outgoing
	validate :property_or_money_incoming
	validates :offeror_id, presence: true
	validates :offeree_id, presence: true

	# validates :title, presence: true
	#
	# validates :director,
	# 	presence: true
	#
	# validates :runtime_in_minutes,
	# 	numericality: { only_integer: true }
	#
	# validates :description,
	# 	presence: true
	#
	# validates :poster_image_url,
	# 	presence: true
	#
	# validates :release_date,
	# 	presence: true
	#
	# validate :release_date_is_in_the_past

	def property_or_money_outgoing
		if (!outgoing_properties || !outgoing_cash)
			errors[:base] << "Specify properties, cash, or both."
		end
	end

	def property_or_money_incoming
		if (!incoming_properties == 0 || !incoming_cash)
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
		(tr.offeror_id == id) ? tr.offeree_id : id
	end


end
