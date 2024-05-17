class Job < ApplicationRecord
  belongs_to :user
  has_many :job_skills
  has_many :skills, through: :job_skills

  validates :title, presence: true
  validates :description, presence: true
  validates :company_name, presence: true
  validates :requirements, presence: true
  validates :location, presence: true
end
