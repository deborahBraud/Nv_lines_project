class GeneticModificationMethod < ApplicationRecord
	has_one :line
	has_many :molecular_data

	validates :line_id, :presence => true
	validates :transgenic_contruction_type, :presence => true
	validates :mutagenic_contruction_type, :presence => true	
end
