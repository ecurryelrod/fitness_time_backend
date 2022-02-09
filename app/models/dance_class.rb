class DanceClass < ApplicationRecord
  belongs_to :teacher
  belongs_to :studio
  belongs_to :level
end
