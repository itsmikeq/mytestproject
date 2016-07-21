require 'rails_helper'

RSpec.describe "OtherStuffs", type: :request do
  describe "GET /other_stuffs" do
    it "works! (now write some real specs)" do
      get other_stuffs_path
      expect(response).to have_http_status(200)
    end
  end
end
