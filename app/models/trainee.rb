class Trainee < ApplicationRecord
    has_many :applications
    has_many :reviews
    has_one :trainer, through: :applications
end
