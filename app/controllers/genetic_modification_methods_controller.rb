class GeneticModificationMethodsController < ApplicationController
  before_action :set_genetic_modification_method, only: %i[ show edit update destroy ]

  # GET /genetic_modification_methods or /genetic_modification_methods.json
  def index
    @genetic_modification_methods = GeneticModificationMethod.includes(:line).all

    if params[:search_key_tag]
      @genetic_modification_methods = GeneticModificationMethod.where("tag_type LIKE ?", 
          "%#{params[:search_key_tag]}%")
    else
      @genetic_modification_methods = GeneticModificationMethod.all
    end
  end

  # GET /genetic_modification_methods/1 or /genetic_modification_methods/1.json
  def show
  end

  # GET /genetic_modification_methods/new
  def new
    @genetic_modification_method = GeneticModificationMethod.new
  end

  # GET /genetic_modification_methods/1/edit
  def edit
  end

  # POST /genetic_modification_methods or /genetic_modification_methods.json
  def create
    @genetic_modification_method = GeneticModificationMethod.new(genetic_modification_method_params)

    respond_to do |format|
      if @genetic_modification_method.save
        format.html { redirect_to @genetic_modification_method, notice: "Genetic modification method was successfully created." }
        format.json { render :show, status: :created, location: @genetic_modification_method }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genetic_modification_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genetic_modification_methods/1 or /genetic_modification_methods/1.json
  def update
    respond_to do |format|
      if @genetic_modification_method.update(genetic_modification_method_params)
        format.html { redirect_to @genetic_modification_method, notice: "Genetic modification method was successfully updated." }
        format.json { render :show, status: :ok, location: @genetic_modification_method }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genetic_modification_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genetic_modification_methods/1 or /genetic_modification_methods/1.json
  def destroy
    @genetic_modification_method.destroy
    respond_to do |format|
      format.html { redirect_to genetic_modification_methods_url, notice: "Genetic modification method was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genetic_modification_method
      @genetic_modification_method = GeneticModificationMethod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genetic_modification_method_params
      params.require(:genetic_modification_method).permit(:line_id, :construction_type_description, :molecular_tools, :mutation_type, :vector_name, :vector_description, :reagent_and_protocol, :tag_type, line_attributes: [:genetic_modification_method_id])
    end
end
