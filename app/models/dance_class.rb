class DanceClass < ApplicationRecord
  belongs_to :teacher
  belongs_to :studio
  belongs_to :level

  validates_presence_of :title, :description, :date, :start_time, :end_time, :level_id, :teacher_id

  scope :order_by_date, -> {order('date')}
end
