class User < ApplicationRecord
	has_one :address
	has_and_belongs_to_many :events
	#validates :name, presence: true, length: { minimum: 5 }
	has_many :memberships
  	has_many :groups, through: :memberships
end
