class Gyms < ApplicationRecord
    has_many :trainers
    has_many :applications
end
