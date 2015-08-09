require "rails_helper"

RSpec.describe PointsChangedRecordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/points_changed_records").to route_to("points_changed_records#index")
    end

    it "routes to #new" do
      expect(:get => "/points_changed_records/new").to route_to("points_changed_records#new")
    end

    it "routes to #show" do
      expect(:get => "/points_changed_records/1").to route_to("points_changed_records#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/points_changed_records/1/edit").to route_to("points_changed_records#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/points_changed_records").to route_to("points_changed_records#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/points_changed_records/1").to route_to("points_changed_records#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/points_changed_records/1").to route_to("points_changed_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/points_changed_records/1").to route_to("points_changed_records#destroy", :id => "1")
    end

  end
end
