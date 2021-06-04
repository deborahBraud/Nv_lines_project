class Line < ApplicationRecord
	belongs_to :phenotype
	accepts_nested_attributes_for :phenotype, allow_destroy: true, reject_if: :all_blank 

	has_many :lines
	
	has_one :wild_type_background
	accepts_nested_attributes_for :wild_type_background, allow_destroy: true, reject_if: :all_blank 

	
	belongs_to :user
	belongs_to :group

	has_many_attached :images

	has_and_belongs_to_many :publications
	accepts_nested_attributes_for :publications, allow_destroy: true, reject_if: :all_blank 

	has_one :genetic_modification_method
	accepts_nested_attributes_for :genetic_modification_method, allow_destroy: true, reject_if: :all_blank 

	validates :line_name, :presence => true
	validates :line_type, :presence => true


	def combined_value
  		"#{self.line_name} #{self.generation}"
	end

	def line_phenotype
		"#{self.line_name} #{self.generation}, ID [#{self.id}]"
	end	

end
