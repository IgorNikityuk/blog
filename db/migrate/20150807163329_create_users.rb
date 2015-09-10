class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :password
      t.string :vk_account
      t.string :age
      t.string :country
      t.string :city
      t.string :phone_number
      t.string :sex

      t.timestamps null: false
    end
  end
end
