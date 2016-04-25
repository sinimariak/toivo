class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :gig_id
      t.integer :user_id
      t.boolean :paid
      t.string :transaction_id

      t.timestamps null: false
    end
  end
end
