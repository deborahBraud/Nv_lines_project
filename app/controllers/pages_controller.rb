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
    	#@parameter = params[:search].downcase  
    	#@results = Staff.all.where("lower(city) LIKE :search", search: "%#{@parameter}%")  
    	@results = Staff.joins(:user).search(params[:search]).order("users.email DESC")
    end	 
  end

end
