# frozen_string_literal: true

class AddKinematicToPrinters < ActiveRecord::Migration[7.1]
  def change
    add_reference :printers, :kinematic, foreign_key: true
  end
end
