# frozen_string_literal: true

module ConfigGenerator
  class KlipperGenerator
    def initialize(printer)
      @printer = printer
      @extruders = printer.extruders
      @kinematic = printer.kinematic
    end

    def generate
      config = []

      config << generate_printer
      @extruders.each do |extruder|
        config << generate_extruder(extruder)
      end
      config.join("\n\n")
    end

    def generate_printer
      printer_config = []
      printer_config << '[printer]'
      printer_config << "kinematics: #{@kinematic.name.downcase}"
      (@printer.attributes.keys.map(&:to_sym) - %i[id created_at updated_at kinematic_id]).each do |attr|
        printer_config << "#{attr}: #{@printer.send(attr)}"
      end
      printer_config.join("\n")
    end

    def generate_extruder(extruder)
      extruder_config = []
      extruder_config << "[extruder #{extruder.name.downcase}]"
      (extruder.attributes.keys.map(&:to_sym) - %i[id name]).each do |attr|
        extruder_config << "#{attr}: #{extruder.send(attr)}"
      end
      extruder_config.join("\n")
    end
  end
end
