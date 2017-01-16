class User < ApplicationRecord
  has_secure_password
  belongs_to :team
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..50 }
  # #Only on Create so other actions like update password attribute can be nil
  # validates_length_of :password, :in => 6..20, :on => :create
end
