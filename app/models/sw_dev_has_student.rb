class SwDevHasStudent < ApplicationRecord
  belongs_to :sw_dev
  belongs_to :student
end
