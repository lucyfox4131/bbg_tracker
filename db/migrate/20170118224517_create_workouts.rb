class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.integer :guide
      t.integer :week
      t.string :type

      t.timestamps
    end
  end
end
