class Publication < ApplicationRecord
	has_and_belongs_to_many :lines
	accepts_nested_attributes_for :lines, allow_destroy: true, reject_if: :all_blank 

	validates :publication_name, :presence => true
end
