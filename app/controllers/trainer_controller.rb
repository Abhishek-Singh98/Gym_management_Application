class TrainerController < ApplicationController
    def show
        @trainer = Trainer.find(params[:id])
    end

    def index
        @trainer = Trainer.all
    end
end