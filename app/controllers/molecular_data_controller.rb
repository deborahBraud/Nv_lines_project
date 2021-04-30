class MolecularDataController < ApplicationController
  before_action :set_molecular_datum, only: %i[ show edit update destroy ]

  # GET /molecular_data or /molecular_data.json
  def index
    @molecular_data = MolecularDatum.all

    if params[:search_key_gene]
      @molecular_data = MolecularDatum.where("gene_name LIKE ?", 
          "%#{params[:search_key_gene]}%")
    else
      @molecular_data = MolecularDatum.all
    end
  end

  # GET /molecular_data/1 or /molecular_data/1.json
  def show
  end

  # GET /molecular_data/new
  def new
    @molecular_datum = MolecularDatum.new
  end

  # GET /molecular_data/1/edit
  def edit
  end

  # POST /molecular_data or /molecular_data.json
  def create
    @molecular_datum = MolecularDatum.new(molecular_datum_params)

    respond_to do |format|
      if @molecular_datum.save
        format.html { redirect_to @molecular_datum, notice: "Molecular datum was successfully created." }
        format.json { render :show, status: :created, location: @molecular_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @molecular_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /molecular_data/1 or /molecular_data/1.json
  def update
    respond_to do |format|
      if @molecular_datum.update(molecular_datum_params)
        format.html { redirect_to @molecular_datum, notice: "Molecular datum was successfully updated." }
        format.json { render :show, status: :ok, location: @molecular_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @molecular_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /molecular_data/1 or /molecular_data/1.json
  def destroy
    @molecular_datum.destroy
    respond_to do |format|
      format.html { redirect_to molecular_data_url, notice: "Molecular datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_molecular_datum
      @molecular_datum = MolecularDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def molecular_datum_params
      params.require(:molecular_datum).permit(:gene_name, :genbank_gene_accession_number, :ensembl_gene_accession_number, :genome_version_accession_number, :gene_sequence, :chromosome_number, :gene_promoter, :NvERTx_id, :locus_insertion, :mutated_region, :genetic_modification_method_id)
    end
end
