class TeacherSerializer
  include JSONAPI::Serializer
  attributes :name, :bio, :dance_classes, :studios
end
