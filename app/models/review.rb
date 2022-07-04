class Review < ApplicationRecord
belongs_to :application
belongs_to :trainer
belongs_to :gym
has_one :rating
end
