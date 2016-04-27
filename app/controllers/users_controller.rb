class UsersController < ApplicationController
  def show
  end

  def vendor?
    return true if self.vendor == true
  end
end