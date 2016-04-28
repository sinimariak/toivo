class ProfilesController < ApplicationController
	def purchases
		@purchase = Purchase.find_by(user_id: current_user.id)
		@purchases = Purchase.where(user_id: current_user.id).all
	end
end
