class UsersController < ApplicationController
  def show
  end

  def search
  	User.reindex
	user = User.search 
	user.each do |user|
	  puts user.details
    end
  end
end