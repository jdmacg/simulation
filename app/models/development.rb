class Development < ApplicationRecord
	belongs_to :property, optional: true
end
