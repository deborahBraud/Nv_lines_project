class HomeController < ApplicationController
  def home_page
  	@phenotypes = Phenotype.all
  	@sublocalization_type = sublocalization_type
  	@region_type = region_type
  	@cell_type = cell_type
  end
end
