require 'rails_helper'

RSpec.describe "deals/new", type: :view do
  before(:each) do
    assign(:deal, Deal.new(
      :title => "MyString",
      :mid => 1,
      :money => 1.5,
      :beans => 1,
      :status => 1
    ))
  end

  it "renders new deal form" do
    render

    assert_select "form[action=?][method=?]", deals_path, "post" do

      assert_select "input#deal_title[name=?]", "deal[title]"

      assert_select "input#deal_mid[name=?]", "deal[mid]"

      assert_select "input#deal_money[name=?]", "deal[money]"

      assert_select "input#deal_beans[name=?]", "deal[beans]"

      assert_select "input#deal_status[name=?]", "deal[status]"
    end
  end
end
