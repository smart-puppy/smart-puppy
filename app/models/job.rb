class Job < ApplicationRecord
  belongs_to :user
  has_many :job_skills
  has_many :skills, through: :job_skills
  has_many :applications, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :company_name, presence: true
  validates :requirements, presence: true
  validates :location, presence: true

  # Geocoder attributes
  after_validation :geocode, if: :location_changed?
end
