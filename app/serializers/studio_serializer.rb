class StudioSerializer
  include JSONAPI::Serializer
  attributes :name, :phone, :email, :address_1, :address_2, :city, :state, :zipcode, :teachers, :dance_classes
end

# class StudioSerializer < ActiveModel::Serializer
#     attributes :id, :name, :phone, :email, :address_1, :address_2, :city, :state, :zipcode
#     has_many :dance_classes
#     has_many :teachers, through: :dance_classes
# end