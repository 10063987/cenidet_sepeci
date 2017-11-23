class InventionHasStudent < ApplicationRecord
  belongs_to :invention
  belongs_to :student
end
