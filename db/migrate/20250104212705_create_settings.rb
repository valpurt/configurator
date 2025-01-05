# frozen_string_literal: true

class CreateSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :settings, &:timestamps
  end
end
