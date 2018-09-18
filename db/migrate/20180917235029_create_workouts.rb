class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :location
      t.text :description
      t.integer :reps
      t.string :duration
      t.string :image

      t.timestamps
    end
  end
end
