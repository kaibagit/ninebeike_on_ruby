require 'rails_helper'

RSpec.describe "points_changed_records/new", type: :view do
  before(:each) do
    assign(:points_changed_record, PointsChangedRecord.new(
      :mid => 1,
      :changed_before => 1,
      :chaged_points => 1,
      :changed_after => 1
    ))
  end

  it "renders new points_changed_record form" do
    render

    assert_select "form[action=?][method=?]", points_changed_records_path, "post" do

      assert_select "input#points_changed_record_mid[name=?]", "points_changed_record[mid]"

      assert_select "input#points_changed_record_changed_before[name=?]", "points_changed_record[changed_before]"

      assert_select "input#points_changed_record_chaged_points[name=?]", "points_changed_record[chaged_points]"

      assert_select "input#points_changed_record_changed_after[name=?]", "points_changed_record[changed_after]"
    end
  end
end
