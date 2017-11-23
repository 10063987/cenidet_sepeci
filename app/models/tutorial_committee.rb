class TutorialCommittee < ApplicationRecord
  belongs_to :teacher_type
  belongs_to :student
end
