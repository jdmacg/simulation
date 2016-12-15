class Team < ApplicationRecord
  belongs_to :user
  has_many :properties
  has_many :trade_requests
end
