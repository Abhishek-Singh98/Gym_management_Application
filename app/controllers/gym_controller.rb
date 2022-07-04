class GymController < ApplicationController
    def show
        @gym = Gym.find(params[:id]) 
    end

    def index
        @gym = Gym.all
    end
end