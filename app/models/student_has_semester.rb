class StudentHasSemester < ApplicationRecord
  belongs_to :student
  belongs_to :semester
end
