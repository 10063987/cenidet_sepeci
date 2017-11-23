class SwDevHasTeacher < ApplicationRecord
  belongs_to :sw_dev
  belongs_to :teacher
end
