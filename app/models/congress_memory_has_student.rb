class CongressMemoryHasStudent < ApplicationRecord
  belongs_to :congress_memory
  belongs_to :student
end
