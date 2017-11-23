class TechDevHasStudent < ApplicationRecord
  belongs_to :tech_dev
  belongs_to :student
end
