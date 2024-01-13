class CreateMuscleSubgroups < ActiveRecord::Migration[7.0]
  def change
    create_table :muscle_subgroups do |t|
      t.string :subcategory
      t.references :muscle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
