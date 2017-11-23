class EventAssistanceHasStudent < ApplicationRecord
  belongs_to :event_assistance
  belongs_to :student
end
