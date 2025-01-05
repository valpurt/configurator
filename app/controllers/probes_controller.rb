class ProbesController < ApplicationController
  before_action :set_probe, only: %i[ show edit update destroy ]

  # GET /probes or /probes.json
  def index
    @probes = Probe.all
  end

  # GET /probes/1 or /probes/1.json
  def show
  end

  # GET /probes/new
  def new
    @probe = Probe.new
  end

  # GET /probes/1/edit
  def edit
  end

  # POST /probes or /probes.json
  def create
    @probe = Probe.new(probe_params)

    respond_to do |format|
      if @probe.save
        format.html { redirect_to probe_url(@probe), notice: "Probe was successfully created." }
        format.json { render :show, status: :created, location: @probe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @probe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /probes/1 or /probes/1.json
  def update
    respond_to do |format|
      if @probe.update(probe_params)
        format.html { redirect_to probe_url(@probe), notice: "Probe was successfully updated." }
        format.json { render :show, status: :ok, location: @probe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @probe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /probes/1 or /probes/1.json
  def destroy
    @probe.destroy!

    respond_to do |format|
      format.html { redirect_to probes_url, notice: "Probe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_probe
      @probe = Probe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def probe_params
      params.fetch(:probe, {})
    end
end
