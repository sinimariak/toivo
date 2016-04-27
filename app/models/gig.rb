class Gig < ActiveRecord::Base
	searchkick
	
	belongs_to :user

	has_many :pictures
	has_many :purchases

	mount_uploaders :pictures, PicturesUploader
end

