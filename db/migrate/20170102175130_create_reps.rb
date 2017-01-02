class CreateReps < ActiveRecord::Migration[5.0]
  def change
    create_table :reps do |t|
      t.float :number
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
