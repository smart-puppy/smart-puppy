class Application < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :resume
  belongs_to :cover_letter

  has_one_attached :cv_file
end
