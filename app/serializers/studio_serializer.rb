class StudioSerializer
  include JSONAPI::Serializer
  attributes :name, :phone, :email, :address_1, :address_2, :city, :state, :zipcode, :teachers, :dance_classes
end
