class Phenotype < ApplicationRecord
	has_many :lines
	has_many :images
end
