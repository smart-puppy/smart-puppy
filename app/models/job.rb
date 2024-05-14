class Job < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :title, presence: true
  validates :description, presence: true
  validates :company_name, presence: true
  validates :requirements, presence: true
  validates :location, presence: true
end
