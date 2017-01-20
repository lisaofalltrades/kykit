class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :purchaser_id
      t.datetime :order_date #set default to today in form
      t.decimal :grand_total
      t.string :shipping_address

      t.timestamp
    end
  end
end
