class McusController < ApplicationController
  before_action :set_mcu, only: %i[ show edit update destroy ]

  # GET /mcus or /mcus.json
  def index
    @mcus = Mcu.all
  end

  # GET /mcus/1 or /mcus/1.json
  def show
  end

  # GET /mcus/new
  def new
    @mcu = Mcu.new
  end

  # GET /mcus/1/edit
  def edit
  end

  # POST /mcus or /mcus.json
  def create
    @mcu = Mcu.new(mcu_params)

    respond_to do |format|
      if @mcu.save
        format.html { redirect_to mcu_url(@mcu), notice: "Mcu was successfully created." }
        format.json { render :show, status: :created, location: @mcu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mcu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcus/1 or /mcus/1.json
  def update
    respond_to do |format|
      if @mcu.update(mcu_params)
        format.html { redirect_to mcu_url(@mcu), notice: "Mcu was successfully updated." }
        format.json { render :show, status: :ok, location: @mcu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mcu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcus/1 or /mcus/1.json
  def destroy
    @mcu.destroy!

    respond_to do |format|
      format.html { redirect_to mcus_url, notice: "Mcu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcu
      @mcu = Mcu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mcu_params
      params.fetch(:mcu, {})
    end
end
