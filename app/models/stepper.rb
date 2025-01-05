# frozen_string_literal: true

class Stepper < ApplicationRecord
  belongs_to :printer
  has_one :axis
end
