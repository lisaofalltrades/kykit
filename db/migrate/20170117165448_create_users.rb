class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :hashed_password, null: false
      t.integer :zip_code, null: false

      t.timestamp
    end
  end
end
