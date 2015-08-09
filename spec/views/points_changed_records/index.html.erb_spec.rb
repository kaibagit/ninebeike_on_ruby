require 'rails_helper'

RSpec.describe "points_changed_records/index", type: :view do
  before(:each) do
    assign(:points_changed_records, [
      PointsChangedRecord.create!(
        :mid => 1,
        :changed_before => 2,
        :chaged_points => 3,
        :changed_after => 4
      ),
      PointsChangedRecord.create!(
        :mid => 1,
        :changed_before => 2,
        :chaged_points => 3,
        :changed_after => 4
      )
    ])
  end

  it "renders a list of points_changed_records" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
