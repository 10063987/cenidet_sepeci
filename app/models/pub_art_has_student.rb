class PubArtHasStudent < ApplicationRecord
  belongs_to :pub_art
  belongs_to :student
end
