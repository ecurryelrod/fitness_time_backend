class Teacher < ApplicationRecord
    has_many :dance_classes
    has_many :studios, through: :dance_classes
end
