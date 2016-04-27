class Gig < ActiveRecord::Base
  belongs_to :user

  has_many :pictures
  has_many :purchases
  has_many :reviews, :dependent => :destroy

  mount_uploaders :pictures, PicturesUploader

  ratyrate_rateable 'Service'
end
