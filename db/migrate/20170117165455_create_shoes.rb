class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :title, null: false, limit: 64
      t.string :brand, null: false
      t.integer :size, null: false
      t.decimal :price, null: false
      t.string :condition, null: false
      t.integer :distance, null: false
      t.text :description, null: false
      t.references :user

      t.timestamp
    end
  end
end
