require 'rails_helper'

RSpec.describe "PointsChangedRecords", type: :request do
  describe "GET /points_changed_records" do
    it "works! (now write some real specs)" do
      get points_changed_records_path
      expect(response).to have_http_status(200)
    end
  end
end
