class AddDateCompletedToRep < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :date, :datetime
  end
end
