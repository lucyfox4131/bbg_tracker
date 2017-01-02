class AddMaxWeightToExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :max_weight, :float
  end
end
