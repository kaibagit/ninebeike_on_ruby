class AddTitleToPointsChangedRecords < ActiveRecord::Migration
  def change
    add_column :points_changed_records, :title, :string
  end
end
