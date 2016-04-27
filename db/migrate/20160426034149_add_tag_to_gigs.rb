class AddTagToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :tag, :string
  end
end
