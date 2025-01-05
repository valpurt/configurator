class SteppersController < ApplicationController
  before_action :set_stepper, only: %i[ show edit update destroy ]

  # GET /steppers or /steppers.json
  def index
    @steppers = Stepper.all
  end

  # GET /steppers/1 or /steppers/1.json
  def show
  end

  # GET /steppers/new
  def new
    @stepper = Stepper.new
  end

  # GET /steppers/1/edit
  def edit
  end

  # POST /steppers or /steppers.json
  def create
    @stepper = Stepper.new(stepper_params)

    respond_to do |format|
      if @stepper.save
        format.html { redirect_to stepper_url(@stepper), notice: "Stepper was successfully created." }
        format.json { render :show, status: :created, location: @stepper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stepper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steppers/1 or /steppers/1.json
  def update
    respond_to do |format|
      if @stepper.update(stepper_params)
        format.html { redirect_to stepper_url(@stepper), notice: "Stepper was successfully updated." }
        format.json { render :show, status: :ok, location: @stepper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stepper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steppers/1 or /steppers/1.json
  def destroy
    @stepper.destroy!

    respond_to do |format|
      format.html { redirect_to steppers_url, notice: "Stepper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stepper
      @stepper = Stepper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stepper_params
      params.fetch(:stepper, {})
    end
end
