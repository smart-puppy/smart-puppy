class Application < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :resume, optional: true
  belongs_to :cover_letter, optional: true

  # Cloudinary
  has_one_attached :cv_file_cloudinary
end
