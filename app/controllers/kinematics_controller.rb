# frozen_string_literal: true

class KinematicsController < ApplicationController
  before_action :set_kinematic, only: %i[show edit update destroy]

  # GET /kinematics or /kinematics.json
  def index
    @kinematics = Kinematic.all
  end

  # GET /kinematics/1 or /kinematics/1.json
  def show; end

  # GET /kinematics/new
  def new
    @kinematic = Kinematic.new
  end

  # GET /kinematics/1/edit
  def edit; end

  # POST /kinematics or /kinematics.json
  def create
    @kinematic = Kinematic.new(kinematic_params)

    respond_to do |format|
      if @kinematic.save
        format.html { redirect_to kinematic_url(@kinematic), notice: 'Kinematic was successfully created.' }
        format.json { render :show, status: :created, location: @kinematic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kinematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kinematics/1 or /kinematics/1.json
  def update
    respond_to do |format|
      if @kinematic.update(kinematic_params)
        format.html { redirect_to kinematic_url(@kinematic), notice: 'Kinematic was successfully updated.' }
        format.json { render :show, status: :ok, location: @kinematic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kinematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kinematics/1 or /kinematics/1.json
  def destroy
    @kinematic.destroy!

    respond_to do |format|
      format.html { redirect_to kinematics_url, notice: 'Kinematic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_kinematic
    @kinematic = Kinematic.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def kinematic_params
    params.require(:kinematic).permit(:name)
  end
end
