# frozen_string_literal: true

class RotationDistanceSetupController < ApplicationController
  include Wicked::Wizard

  steps :select_extruder, :update_distance

  def show
    case @step
    when :select_extruder
      @extruders = Extruder.all
    end
    render_wizard
  end
end
