class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :title, null: false, limit: 64
      t.decimal :price, null: false
      t.text :description, null: false
      t.string :condition, null: false

      t.timestamp
    end
  end
end
