class GenerationHasTeacher < ApplicationRecord
  belongs_to :generation
  belongs_to :teacher
end
