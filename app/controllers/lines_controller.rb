class LinesController < ApplicationController
  before_action :set_line, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [ :index, :show]
  # GET /lines or /lines.json
  def index
    @lines = Line.all
  end

  def wt_index
    @lines = Line.all
  end

  def tg_m_index
    @lines = Line.all
  end

  # GET /lines/1 or /lines/1.json
  def show
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
      params.require(:line).permit(:line_name, :synonym_line_name, :line_type, :person_in_charge, :breeding_type, :generation, :zygosity, :phenotype_id, :line_id, :genetic_modification_method_id, :user_id, :group_id, :wild_type_background)
    end


end
