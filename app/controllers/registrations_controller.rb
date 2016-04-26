class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :location, :avatar, :email, :vendor, :vendor_identification, :vendor_description, :vendor_category, :vendor_video_url, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :location, :avatar, :email, :vendor, :vendor_identification, :vendor_description, :vendor_category, :vendor_video_url, :password, :password_confirmation, :current_password)
  end
end