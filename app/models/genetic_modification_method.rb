class GeneticModificationMethod < ApplicationRecord
	has_one :line
	has_many :molecular_data
end
