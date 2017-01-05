class Property < ApplicationRecord
  belongs_to :team, optional: true
  has_many :developments
end
