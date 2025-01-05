# frozen_string_literal: true

class Printer < ApplicationRecord
  belongs_to :extruder
  belongs_to :kinematic

  has_many :probes
  has_many :steppers
  has_many :axes
end
