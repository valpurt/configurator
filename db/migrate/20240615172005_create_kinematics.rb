class CreateKinematics < ActiveRecord::Migration[7.1]
  def change
    create_table :kinematics do |t|
      t.string :name

      t.timestamps
    end
  end
end
