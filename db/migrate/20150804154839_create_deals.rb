class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.integer :mid
      t.float :money
      t.integer :beans
      t.integer :status

      t.timestamps
    end
  end
end
