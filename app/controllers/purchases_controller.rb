class PurchasesController < ApplicationController

	def index
		@purchase = Purchase.find_by(user_id: current_user.id)
		@purchases = Purchase.where(user_id: current_user.id).all
	end

	def new
	  	@client_token = generate_client_token
	  	@gig = Gig.find(params[:gig_id])
	  	@purchase = Purchase.new(user_id: current_user.id, gig_id: @gig.id)
	end

	def create
		@gig = Gig.find(params[:gig_id])
		@result = Braintree::Transaction.sale(amount: params[:price], payment_method_nonce: params[:payment_method_nonce])
	    if @result.success?
	    	@purchase = Purchase.create(gig_id: @gig.id, user_id: current_user.id, transaction_id: @result.transaction.id)
	    	@purchase.paid!
	    	redirect_to gig_purchase_path(@gig, @purchase), notice: "Transaction processed!"
	    else
	    	flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
	    	gon.client_token = generate_client_token
	    	render :new
	    end
	end

	def show
		@purchase = Purchase.find_by(user_id: current_user.id)
		@purchases = Purchase.where(user_id: current_user.id).all
	end

	private
	def generate_client_token
  		Braintree::ClientToken.generate
	end

	def purchase_params
     	params.require(:purchase).permit(:gig_id, :user_id, :paid, :transaction_id)
    end
end