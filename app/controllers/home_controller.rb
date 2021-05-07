class HomeController < ApplicationController
  def home_page
	  @phenotypes = Phenotype.all
	  @sublocalization_type = Phenotype.sublocalization_types
	  @region_type = Phenotype.region_types
	  @cell_type = Phenotype.cell_types
  end	  

  def filter_phenotypes
  end
end
