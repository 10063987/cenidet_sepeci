class StayHasStudent < ApplicationRecord
  belongs_to :stay
  belongs_to :student
end
