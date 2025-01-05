# frozen_string_literal: true

class Axis < ApplicationRecord
  has_many :steppers
  belongs_to :printer
end
