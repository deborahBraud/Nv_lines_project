class Phenotype < ApplicationRecord
	has_many :lines
	has_many :images

	def phenotype_line
		"#{self.name}, line ID #{self.lines.ids}"
	end	

end
