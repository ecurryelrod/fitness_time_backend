class TeacherSerializer
  include JSONAPI::Serializer
  attributes :name, :bio, :dance_classes, :studios
end

# class TeacherSerializer < ActiveModel::Serializer
#     attributes :id, :name, :bio
#     has_many :dance_classes
#     has_many :studios, through: :dance_classes
# end