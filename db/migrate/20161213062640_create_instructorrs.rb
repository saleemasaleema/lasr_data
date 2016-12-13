class CreateInstructorrs < ActiveRecord::Migration[5.0]
  def change
    create_table :instructorrs do |t|
      t.string :i_name
      t.text :i_address
      t.string :Gender

      t.timestamps
    end
  end
end
