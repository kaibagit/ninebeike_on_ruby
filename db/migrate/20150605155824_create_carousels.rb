class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :image
      t.string :ulr

      t.timestamps
    end
  end
end
