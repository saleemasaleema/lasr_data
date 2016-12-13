class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :Title
      t.integer :Price
      t.integer :C_number

      t.timestamps
    end
  end
end
