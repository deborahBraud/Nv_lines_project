class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum staff_type: [:Team, :Facility]
  enum generation: [:F0, :F1, :F2]
  enum zygosity: [:Homozygous, :Heterozygous,]
end
