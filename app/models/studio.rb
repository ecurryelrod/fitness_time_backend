class Studio < ApplicationRecord
    has_many :dance_classes
    has_many :teachers, -> {distinct}, through: :dance_classes
    has_many :levels, -> {distinct}, through: :dance_classes
end
