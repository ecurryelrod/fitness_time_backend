class LevelSerializer
    include JSONAPI::Serializer
    attributes :title, :dance_classes
end

# class LevelSerializer < ActiveModel::Serializer
#     attributes :id, :title
#     has_many :dance_classes
# end