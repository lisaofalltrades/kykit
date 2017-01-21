class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :title, null: false, limit: 64
      t.string :brand, null: false
      t.integer :size, null: false
      t.float :price, null: false
      t.string :condition, null: false
      t.integer :zip_code, null: false
      t.integer :distance, null: false
      t.text :description, null: false
      t.integer :seller_id

      t.timestamp
    end
  end
end
