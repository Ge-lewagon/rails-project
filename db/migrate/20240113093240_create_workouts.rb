class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.date :date
      t.integer :set
      t.integer :rep
      t.references :user, null: false, foreign_key: true
      t.references :excercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
