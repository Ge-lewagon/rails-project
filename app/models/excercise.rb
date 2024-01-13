class Excercise < ApplicationRecord
  belongs_to :muscle_subgroup
  has_many :workouts
end
