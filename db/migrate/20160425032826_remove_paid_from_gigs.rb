class RemovePaidFromGigs < ActiveRecord::Migration
  def change
    remove_column :gigs, :paid, :boolean
  end
end
