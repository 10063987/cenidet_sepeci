class GenerationHasStudent < ApplicationRecord
  belongs_to :generation
  belongs_to :student
end
