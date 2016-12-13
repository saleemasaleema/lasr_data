class CreateClassRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :class_rooms do |t|
      t.integer :Cl_no
      t.date :Cl_date
      t.integer :Strength
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
