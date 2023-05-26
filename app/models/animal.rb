class Animal < ApplicationRecord
    has_many :sighting_reports
    has_many :sighting1, through: :sighting_reports
end
