class Gig < ActiveRecord::Base
  belongs_to :user

  has_many :pictures
  has_many :purchases

  mount_uploader :pictures, PicturesUploader
end
