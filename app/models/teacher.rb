class Teacher < ApplicationRecord
  belongs_to :research_line
  belongs_to :origin
  belongs_to :teacher_type
  belongs_to :user
end
