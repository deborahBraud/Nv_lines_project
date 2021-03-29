class Image < ApplicationRecord
	belongs_to :phenotype
	belongs_to :line
end
