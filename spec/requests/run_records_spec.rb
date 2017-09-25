require 'rails_helper'

RSpec.describe "RunRecords", type: :request do
  describe "GET /run_records" do
    it "works! (now write some real specs)" do
      get run_records_path
      expect(response).to have_http_status(200)
    end
  end
end
