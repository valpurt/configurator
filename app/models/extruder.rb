# frozen_string_literal: true

class Extruder < ApplicationRecord
  belongs_to :printer, optional: true
end
