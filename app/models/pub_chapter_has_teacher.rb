class PubChapterHasTeacher < ApplicationRecord
  belongs_to :pub_chapter
  belongs_to :teacher
end
