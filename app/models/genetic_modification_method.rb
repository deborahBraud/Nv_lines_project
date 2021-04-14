class GeneticModificationMethod < ApplicationRecord
	has_one :line
	has_many :molecular_data

	validates :line_id, :presence => true
end
