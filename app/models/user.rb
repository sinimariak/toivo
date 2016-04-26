class User < ActiveRecord::Base
	searchkick

	has_many :gigs, :dependent => :destroy
	has_many :purchases
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	mount_uploader :avatar, AvatarUploader
end


