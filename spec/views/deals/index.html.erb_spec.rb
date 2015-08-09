require 'rails_helper'

RSpec.describe "deals/index", type: :view do
  before(:each) do
    assign(:deals, [
      Deal.create!(
        :title => "Title",
        :mid => 1,
        :money => 1.5,
        :beans => 2,
        :status => 3
      ),
      Deal.create!(
        :title => "Title",
        :mid => 1,
        :money => 1.5,
        :beans => 2,
        :status => 3
      )
    ])
  end

  it "renders a list of deals" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
