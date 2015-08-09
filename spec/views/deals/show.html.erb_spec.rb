require 'rails_helper'

RSpec.describe "deals/show", type: :view do
  before(:each) do
    @deal = assign(:deal, Deal.create!(
      :title => "Title",
      :mid => 1,
      :money => 1.5,
      :beans => 2,
      :status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
