class AddAxes < ActiveRecord::Migration[7.1]
  def change
    create_table :axes do |t|
      t.references :printer, null: false, foreign_key: true
      t.string :name, null: false
      t.string :type, null: false
      t.float :length

      t.timestamps
    end

    change_table :steppers do |t|
      t.references :axis, null: false, foreign_key: true
    end
  end
end
