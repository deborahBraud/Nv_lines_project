class Line < ApplicationRecord
	belongs_to :phenotype
	has_many :lines
	has_one :wild_type_background
	has_and_belongs_to_many :publications
	belongs_to :user
	belongs_to :group
	has_many :images
	has_and_belongs_to_many :publications
	has_one :genetic_modification_method
end
