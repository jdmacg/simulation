class Team < ApplicationRecord
  belongs_to :user
  has_many :properties
  has_and_belongs_to_many :trade_requests
end
