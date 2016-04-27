class ReviewsController < ApplicationController

	def index
		@reviews = Review.all
	end

	def new
		@gig = Gig.new
		@review = Review.new(review_params)
	end

	def create
		@review = Review.new(review_params)
		if @review.save
			redirect_to gig_path(review_params[:gig_id])
		else 
			flash[:alert] = "Something went wrong. Please try again!"
		end
	end

	private
	def review_params
        params.require(:review).permit(:content, :gig_id, :user_id)
   end
end
