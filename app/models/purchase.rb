class Purchase < ActiveRecord::Base
	searchkick

	belongs_to :user
	belongs_to :gig

	def paid!
	self.paid = true
	self.save!
		end

    def paid?
	    return true if self.paid
	end
end
