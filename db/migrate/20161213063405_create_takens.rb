class CreateTakens < ActiveRecord::Migration[5.0]
  def change
    create_table :takens do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
