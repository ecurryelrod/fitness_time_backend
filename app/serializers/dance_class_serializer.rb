class DanceClassSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :date, :start_time, :end_time, :price, :studio, :teacher, :level
end

# class DanceClassSerializer < ActiveModel::Serializer
#     attributes :id, :title, :description, :date, :start_time, :end_time, :price
#     belongs_to :studio
#     belongs_to :level
#     belongs_to :teacher
# end