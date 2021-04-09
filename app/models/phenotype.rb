class Phenotype < ApplicationRecord
	has_many :lines
	has_many :images

	validates :tissu_localization, :presence => true
end
