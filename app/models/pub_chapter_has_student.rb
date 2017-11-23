class PubChapterHasStudent < ApplicationRecord
  belongs_to :pub_chapter
  belongs_to :student
end
