class Rating < ApplicationRecord
  validates :value, inclusion: { in: 1..5 }

  belongs_to :user
  belongs_to :recipe
end
