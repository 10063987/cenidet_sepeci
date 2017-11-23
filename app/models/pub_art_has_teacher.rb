class PubArtHasTeacher < ApplicationRecord
  belongs_to :pub_art
  belongs_to :teacher
end
