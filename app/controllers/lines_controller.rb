class LinesController < ApplicationController
  before_action :set_line, only: %i[ show edit update destroy ]
  
  # GET /lines or /lines.json
  def index
    @lines = Line.all

    if params[:search_key]
      @lines = Line.where("line_name LIKE ? OR synonym_line_name LIKE ?", 
          "%#{params[:search_key]}%", "%#{params[:search_key]}%")
    elsif params[:search_line_type]
      @lines = Line.where("line_type LIKE ?",
          "%#{params[:search_line_type]}%")
    else
      @lines = Line.all
    end
  end

  def wt_index
    @lines = Line.all
  end

  def reporter_index
    @lines = Line.all
  end

  def functional_index
    @lines = Line.all
  end

  # GET /lines/1 or /lines/1.json
  def show
    @line = Line.find(params[:id])
  end

  # GET /lines/new
  def new
     @line = Line.new
  end 

  # GET /lines/1/edit
  def edit
  end

  # POST /lines or /lines.json
  def create
    @line = Line.new(line_params)
    #params.require(:line).permit(:title, :content)
    @line.image.attach(params[:image]) 
    #redirect_to @line

    respond_to do |format|
      if @line.save
        format.html { redirect_to @line, notice: "Line was successfully created." }
        format.json { render :show, status: :created, location: @line }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /lines/1 or /lines/1.json
  def update
    respond_to do |format|
      if @line.update(line_params)
        format.html { redirect_to @line, notice: "Line was successfully updated." }
        format.json { render :show, status: :ok, location: @line }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1 or /lines/1.json
  def destroy
    @line.destroy
    respond_to do |format|
      format.html { redirect_to lines_url, notice: "Line was successfully destroyed." }
      format.json { head :no_content } 
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line
      @line = Line.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_params
      params.require(:line).permit( :line_name,
       :synonym_line_name,
       :line_type,
       :person_in_charge,
       :breeding_type, 
       :generation,
       :zygosity, 
       :lab_of_origin,
       :phenotype_id, 
       :line_id, 
       :genetic_modification_method_id, 
       :user_id, 
       :group_id, 

       :wild_type_background_id, 
       wild_type_background_attributes: [:sampling_geographical_zone, :id], 
       
       publication_ids: [], 
       phenotype_attributes: [:name, :id], 
       publications_attributes: [:id, :publication_name, :authors, :publication_date, :_destroy], 
       genetic_modification_method_attributes: [:id, :construction_type_description, :molecular_tools, :mutation_type, :vector_name, :vector_description, :tag_type], 
       images: [])
    end


end
