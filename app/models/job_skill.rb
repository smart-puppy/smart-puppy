class JobSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :job
end
