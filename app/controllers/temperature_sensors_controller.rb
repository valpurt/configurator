class TemperatureSensorsController < ApplicationController
  before_action :set_temperature_sensor, only: %i[ show edit update destroy ]

  # GET /temperature_sensors or /temperature_sensors.json
  def index
    @temperature_sensors = TemperatureSensor.all
  end

  # GET /temperature_sensors/1 or /temperature_sensors/1.json
  def show
  end

  # GET /temperature_sensors/new
  def new
    @temperature_sensor = TemperatureSensor.new
  end

  # GET /temperature_sensors/1/edit
  def edit
  end

  # POST /temperature_sensors or /temperature_sensors.json
  def create
    @temperature_sensor = TemperatureSensor.new(temperature_sensor_params)

    respond_to do |format|
      if @temperature_sensor.save
        format.html { redirect_to temperature_sensor_url(@temperature_sensor), notice: "Temperature sensor was successfully created." }
        format.json { render :show, status: :created, location: @temperature_sensor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temperature_sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temperature_sensors/1 or /temperature_sensors/1.json
  def update
    respond_to do |format|
      if @temperature_sensor.update(temperature_sensor_params)
        format.html { redirect_to temperature_sensor_url(@temperature_sensor), notice: "Temperature sensor was successfully updated." }
        format.json { render :show, status: :ok, location: @temperature_sensor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temperature_sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temperature_sensors/1 or /temperature_sensors/1.json
  def destroy
    @temperature_sensor.destroy!

    respond_to do |format|
      format.html { redirect_to temperature_sensors_url, notice: "Temperature sensor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperature_sensor
      @temperature_sensor = TemperatureSensor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temperature_sensor_params
      params.fetch(:temperature_sensor, {})
    end
end
