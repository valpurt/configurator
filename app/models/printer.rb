# frozen_string_literal: true

class Printer < ApplicationRecord
  belongs_to :kinematic

  has_many :probes
  has_many :steppers
  has_many :axes
  has_many :extruders
end
