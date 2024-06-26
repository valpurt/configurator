class Printer < ApplicationRecord
  belongs_to :extruder
  belongs_to :kinematic
end
