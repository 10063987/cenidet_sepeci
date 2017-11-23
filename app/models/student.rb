class Student < ApplicationRecord
  belongs_to :research_line
  belongs_to :user
end
