class Team < ApplicationRecord
  has_many :users
  has_many :properties
  has_many :trade_requests
end
