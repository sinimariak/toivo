class AddVendorsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vendor, :boolean, default: false
    add_column :users, :vendor_identification, :string
    add_column :users, :vendor_description, :text
    add_column :users, :vendor_category, :string
    add_column :users, :vendor_video_url, :string
  end
end
