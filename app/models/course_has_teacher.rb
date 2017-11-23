class CourseHasTeacher < ApplicationRecord
  belongs_to :course
  belongs_to :teacher
end
