class PubArt < ApplicationRecord
  belongs_to :pub_art_type
  belongs_to :message
end
