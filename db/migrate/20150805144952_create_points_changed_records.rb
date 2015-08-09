class CreatePointsChangedRecords < ActiveRecord::Migration
  def change
    create_table :points_changed_records do |t|
      t.integer :mid
      t.integer :changed_before
      t.integer :chaged_points
      t.integer :changed_after

      t.timestamps
    end
  end
end
