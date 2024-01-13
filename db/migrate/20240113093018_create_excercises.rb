class CreateExcercises < ActiveRecord::Migration[7.0]
  def change
    create_table :excercises do |t|
      t.string :name
      t.string :gif_url
      t.references :muscle_subgroup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
