class InventionHasTeacher < ApplicationRecord
  belongs_to :invention
  belongs_to :teacher
end
