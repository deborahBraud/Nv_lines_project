class Image < ApplicationRecord
	belongs_to :phenotype
	belongs_to :line
	has_one_attached :image
end
