# frozen_string_literal: true

json.extract! extruder, :id, :name, :rotation_distance, :gear_ratio, :microsteps, :full_steps_per_rotation,
              :filament_diameter, :nozzle_diameter, :created_at, :updated_at
json.url extruder_url(extruder, format: :json)
