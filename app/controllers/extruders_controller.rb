class ExtrudersController < ApplicationController
  before_action :set_extruder, only: %i[ show edit update destroy ]

  # GET /extruders or /extruders.json
  def index
    @extruders = Extruder.all
  end

  # GET /extruders/1 or /extruders/1.json
  def show
  end

  # GET /extruders/new
  def new
    @extruder = Extruder.new
  end

  # GET /extruders/1/edit
  def edit
  end

  # POST /extruders or /extruders.json
  def create
    @extruder = Extruder.new(extruder_params)

    respond_to do |format|
      if @extruder.save
        format.html { redirect_to extruder_url(@extruder), notice: "Extruder was successfully created." }
        format.json { render :show, status: :created, location: @extruder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @extruder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extruders/1 or /extruders/1.json
  def update
    respond_to do |format|
      if @extruder.update(extruder_params)
        format.html { redirect_to extruder_url(@extruder), notice: "Extruder was successfully updated." }
        format.json { render :show, status: :ok, location: @extruder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @extruder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extruders/1 or /extruders/1.json
  def destroy
    @extruder.destroy!

    respond_to do |format|
      format.html { redirect_to extruders_url, notice: "Extruder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extruder
      @extruder = Extruder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extruder_params
      params.require(:extruder).permit(:name, :rotation_distance, :gear_ratio, :microsteps, :full_steps_per_rotation, :filament_diameter, :nozzle_diameter)
    end
end
