class Level < ApplicationRecord
    has_many :dance_classes
    has_many :studios, -> {distinct}, through: :dance_classes
end
