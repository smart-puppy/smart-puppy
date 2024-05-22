class Resume < ApplicationRecord
  belongs_to :user

  has_one_attached :resume_file
end
