class StayHasTeacher < ApplicationRecord
  belongs_to :stay
  belongs_to :teacher
end
