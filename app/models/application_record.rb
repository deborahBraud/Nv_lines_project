class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum staff_type: [:Team, :Facility]
end
