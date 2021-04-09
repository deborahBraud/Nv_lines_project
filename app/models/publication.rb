class Publication < ApplicationRecord
	has_and_belongs_to_many :lines

	validates :publication_name, :presence => true
end
