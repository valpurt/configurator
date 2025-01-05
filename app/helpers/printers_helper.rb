# frozen_string_literal: true

module PrintersHelper
  def prepare_config(printer)
    ConfigGenerator::KlipperGenerator.new(printer).generate
  end
end
