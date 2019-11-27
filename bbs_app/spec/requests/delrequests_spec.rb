require 'rails_helper'

RSpec.describe "Delrequests", type: :request do
  describe "GET /delrequests" do
    it "works! (now write some real specs)" do
      get delrequests_path
      expect(response).to have_http_status(200)
    end
  end
end
