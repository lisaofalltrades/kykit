class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :shoe_id
      t.integer :order_id
    end
  end
end
