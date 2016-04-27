class ReviewsController < ApplicationController

	def index
		@reviews = Review.all
	end

	def new
		byebug
		@gig = Gig.new
		@review = Review.new(review_params)
	end

	def create
		@review = Review.new(review_params)
		if @review.save
			redirect_to root_path
		else
			redirect_to gig_purchase_path
		end
	end

	private
	def review_params
        params.require(:review).permit(:content, :gig_id, :user_id)
   end
end
