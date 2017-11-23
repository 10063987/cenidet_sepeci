class CongressMemoryHasTeacher < ApplicationRecord
  belongs_to :congress_memory
  belongs_to :teacher
end
