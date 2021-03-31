class PagesController < ApplicationController
  def publications_index
  end

  def about_nematostella
  end

  def contact
  end

  def search
  	if params[:search].blank?  
    	redirect_to(root_path, notice: "Empty field!") and return 
    else
    	@parameter = params[:search].downcase  
    	@results = Line.all.where("lower(line_name) LIKE :search", search: "%#{@parameter}%")  

    end	 
  end

end
