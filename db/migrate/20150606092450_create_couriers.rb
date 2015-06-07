class CreateCouriers < ActiveRecord::Migration
  def change
    create_table :couriers do |t|
      t.string :username
      t.string :name
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end
