class CreateTaughts < ActiveRecord::Migration[5.0]
  def change
    create_table :taughts do |t|
      t.references :course, foreign_key: true
      t.references :instructorr, foreign_key: true

      t.timestamps
    end
  end
end
