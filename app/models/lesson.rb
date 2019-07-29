class Lesson < ApplicationRecord
  belongs_to :section
  mount_uploader :video, VideoUploader
  has_many :photos

  include RankedModel
  ranks :row_order, with_same: :section_id
end
