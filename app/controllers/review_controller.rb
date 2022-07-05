class ReviewController < ApplicationController

    def show
        @review = Review.find(params[:id])
    end

    def index
     @review = Review.all
    end

    def new
    end

    def create
        @review = Review.new(params.require(:review).permit(:description))
        @review.save
        redirect_to 
    end
    
end