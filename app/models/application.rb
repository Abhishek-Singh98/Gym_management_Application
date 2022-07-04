class Application < ApplicationRecord
    belongs_to :trainer
    belongs_to :trainee
    belongs_to :gym
    has_many :reviews
end
