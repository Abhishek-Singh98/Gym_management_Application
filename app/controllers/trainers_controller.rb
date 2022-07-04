class TrainersController < ApplicationController
    def show
        @trainer = Trainers.find(params[:id])
    end

    def index
        @trainer= Trainers.all
    end
end