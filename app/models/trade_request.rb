class TradeRequest < ApplicationRecord
	belongs_to :requester, class_name: "Team"
	belongs_to :requestee, class_name: "Team"
	has_one :property
end
