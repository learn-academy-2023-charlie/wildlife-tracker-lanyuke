class Sighting1 < ApplicationRecord
    has_many :sighting_reports
    has_many :animals, sighting_reports
end
