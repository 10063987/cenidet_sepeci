class SetAsideClassroom < ApplicationRecord
  belongs_to :classroom
  belongs_to :tutorial_committee
  belongs_to :student
  belongs_to :teacher_type
end
