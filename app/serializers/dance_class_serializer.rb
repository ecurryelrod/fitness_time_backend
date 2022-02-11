class DanceClassSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :date, :start_time, :end_time, :price, :teacher_id, :studio_id, :level_id, :studio, :teacher, :level
end
