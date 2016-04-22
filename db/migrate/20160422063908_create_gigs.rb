class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.integer :price
      t.text :details
      t.json :pictures
      t.boolean :paid
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
