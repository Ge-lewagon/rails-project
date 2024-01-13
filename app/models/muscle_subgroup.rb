class MuscleSubgroup < ApplicationRecord
  belongs_to :muscle
  has_many :excercises
end
