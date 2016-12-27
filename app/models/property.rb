class Property < ApplicationRecord
  belongs_to :team, optional: true
end
