class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum staff_type: [:Team, :Facility]
  enum generation: [:F0, :F1, :F2]
  enum zygosity: [:Homozygous, :Heterozygous]
  enum transgenic_construction_type: [:Overexpression, :Inducible, :Knockdown, :Reporter, :Other_transgenic, :None_transgenic ]
  enum mutagenic_construction_type: [:Gain_of_function_KnockIn, :Loss_of_function_KnockIn, :Loss_of_function_KnockOut, :Other_mutagenic, :None_mutagenic ]
end
