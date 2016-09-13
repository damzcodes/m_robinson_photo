class Image < ActiveRecord::Base
  has_attached_file :image, styles: {
    medium: "300x300>",
    thumb: "100x100>"
  },

  timestamp: false

  validates_presence_of :image

  validates_attachment_content_type :image, content_type: %w{
    image/jpg
    image/jpeg
    image/png
    image/gif
  }
end