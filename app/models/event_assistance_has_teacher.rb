class EventAssistanceHasTeacher < ApplicationRecord
  belongs_to :event_assistance
  belongs_to :teacher
end
