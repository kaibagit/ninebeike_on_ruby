require 'rails_helper'

describe PointsService do

  describe "change points success" do
  	member = FactoryGirl.create(:luliru)
    title = "变更记录"
    points = 10
    PointsService.change_points(member.id,title,points)
  end

end