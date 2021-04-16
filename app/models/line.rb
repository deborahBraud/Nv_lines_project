class Line < ApplicationRecord
	belongs_to :phenotype
	accepts_nested_attributes_for :phenotype, allow_destroy: true, reject_if: :all_blank 

	has_many :lines
	has_one :wild_type_background
	has_and_belongs_to_many :publications
	belongs_to :user
	belongs_to :group
	has_many :images
	has_and_belongs_to_many :publications
	has_one :genetic_modification_method


	validates :line_name, :presence => true
	validates :line_type, :presence => true


	def combined_value
  		"#{self.line_name} #{self.generation}"
	end

end
