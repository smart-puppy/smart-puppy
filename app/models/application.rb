class Application < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :resume
  belongs_to :cover_letter
end
