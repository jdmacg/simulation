class Property < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :property_type, optional: true
  has_many :developments
end
