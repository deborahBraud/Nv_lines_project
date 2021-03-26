class WildTypeBackgroundsController < ApplicationController
  before_action :set_wild_type_background, only: %i[ show edit update destroy ]

  # GET /wild_type_backgrounds or /wild_type_backgrounds.json
  def index
    @wild_type_backgrounds = WildTypeBackground.all
  end

  # GET /wild_type_backgrounds/1 or /wild_type_backgrounds/1.json
  def show
  end

  # GET /wild_type_backgrounds/new
  def new
    @wild_type_background = WildTypeBackground.new
  end

  # GET /wild_type_backgrounds/1/edit
  def edit
  end

  # POST /wild_type_backgrounds or /wild_type_backgrounds.json
  def create
    @wild_type_background = WildTypeBackground.new(wild_type_background_params)

    respond_to do |format|
      if @wild_type_background.save
        format.html { redirect_to @wild_type_background, notice: "Wild type background was successfully created." }
        format.json { render :show, status: :created, location: @wild_type_background }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wild_type_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wild_type_backgrounds/1 or /wild_type_backgrounds/1.json
  def update
    respond_to do |format|
      if @wild_type_background.update(wild_type_background_params)
        format.html { redirect_to @wild_type_background, notice: "Wild type background was successfully updated." }
        format.json { render :show, status: :ok, location: @wild_type_background }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wild_type_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wild_type_backgrounds/1 or /wild_type_backgrounds/1.json
  def destroy
    @wild_type_background.destroy
    respond_to do |format|
      format.html { redirect_to wild_type_backgrounds_url, notice: "Wild type background was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wild_type_background
      @wild_type_background = WildTypeBackground.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wild_type_background_params
      params.require(:wild_type_background).permit(:sampling_conditions, :sampling_geographical_zone, :supplementary_information)
    end
end
