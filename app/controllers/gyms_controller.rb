class GymsController < ApplicationController
    def show
        @gym = Gyms.find(params[:id]) 
    end

    def index
        @gym = Gyms.all
    end
end