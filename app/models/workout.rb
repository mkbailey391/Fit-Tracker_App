class Workout < ApplicationRecord
    has_many :comments, dependent: :destroy
end
