class User < ApplicationRecord
  has_secure_password
  # has_one :team
  has_many :properties
  has_many :trade_requests
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  # #Only on Create so other actions like update password attribute can be nil
  # validates_length_of :password, :in => 6..20, :on => :create
end
