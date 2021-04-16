class PhenotypesController < ApplicationController
  before_action :set_phenotype, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [ :index, :show]
  # GET /phenotypes or /phenotypes.json
  def index
    @phenotypes = Phenotype.all
  end

  # GET /phenotypes/1 or /phenotypes/1.json
  def show
  end

  # GET /phenotypes/new
  def new
    @phenotype = Phenotype.new
  end

  # GET /phenotypes/1/edit
  def edit
  end

  # POST /phenotypes or /phenotypes.json
  def create
    @phenotype = Phenotype.new(phenotype_params)

    respond_to do |format|
      if @phenotype.save
        format.html { redirect_to @phenotype, notice: "Phenotype was successfully created." }
        format.json { render :show, status: :created, location: @phenotype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phenotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phenotypes/1 or /phenotypes/1.json
  def update
    respond_to do |format|
      if @phenotype.update(phenotype_params)
        format.html { redirect_to @phenotype, notice: "Phenotype was successfully updated." }
        format.json { render :show, status: :ok, location: @phenotype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phenotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phenotypes/1 or /phenotypes/1.json
  def destroy
    @phenotype.destroy
    respond_to do |format|
      format.html { redirect_to phenotypes_url, notice: "Phenotype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phenotype
      @phenotype = Phenotype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phenotype_params
      params.require(:phenotype).permit(:name, :embryo_letality, :larva_swimming_perturbation, :larva_letality, :metamorphosis_perturbation, :post_metamorphosis_growth, :regeneration, :adult_letality, :adult_fecondity, :other_phenotype_description, :sublocalization_type, :cell_type, :region_type, line_attributes: [:phenotype_id])
    end
end
