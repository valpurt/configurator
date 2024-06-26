# frozen_string_literal: true

module ConfigGenerator
  class KlipperGenerator
    def initialize(printer)
      super()
      @printer = printer
      @extruder = printer.extruder
      @kinematic = printer.kinematic
    end

    def generate
      config = []

      config << generate_printer
      config << generate_extruder
      config.join("\n\n")
    end

    def generate_printer
      printer_config = []
      printer_config << '[printer]'
      printer_config << "kinematics: #{@kinematic.name}"
      printer_config.join("\n")
    end

    def generate_extruder
      extruder_config = []
      extruder_config << "[extruder #{@extruder.name.downcase}]"
      %i[microsteps rotation_distance nozzle_diameter filament_diameter gear_ratio].each do |attr|
        extruder_config << "#{attr.to_s}: #{@extruder.send(attr)}"
      end
      extruder_config.join("\n")
    end
  end

end
