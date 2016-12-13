class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :S_name
      t.string :Gender
      t.text :Address

      t.timestamps
    end
  end
end
