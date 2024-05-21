class Resume < ApplicationRecord
  belongs_to :user

  has_one_attached :cv_file
end
