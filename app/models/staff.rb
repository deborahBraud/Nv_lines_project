class Staff < ApplicationRecord
	has_and_belongs_to_many :users

	validates :staff_name, :presence => true
end
