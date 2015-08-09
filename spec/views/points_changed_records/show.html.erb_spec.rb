require 'rails_helper'

RSpec.describe "points_changed_records/show", type: :view do
  before(:each) do
    @points_changed_record = assign(:points_changed_record, PointsChangedRecord.create!(
      :mid => 1,
      :changed_before => 2,
      :chaged_points => 3,
      :changed_after => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
