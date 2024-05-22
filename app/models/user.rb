class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :applications
  has_many :applied_jobs, through: :applications, source: :job
  has_many :jobs
  has_many :resumes
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_one_attached :photo
end
