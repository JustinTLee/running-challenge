require "rails_helper"

RSpec.describe RunRecordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/run_records").to route_to("run_records#index")
    end

    it "routes to #show" do
      expect(:get => "/run_records/1").to route_to("run_records#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/run_records").to route_to("run_records#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/run_records/1").to route_to("run_records#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/run_records/1").to route_to("run_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/run_records/1").to route_to("run_records#destroy", :id => "1")
    end

  end
end
