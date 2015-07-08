class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :mobile
      t.integer :points

      t.timestamps
    end
  end
end
