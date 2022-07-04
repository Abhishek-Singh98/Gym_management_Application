class GymsController < ApplicationController
    def show
        @gyms = Gym.find(params[:id]) 
    end

    def index
        @gyms = Gym.all
    end
end