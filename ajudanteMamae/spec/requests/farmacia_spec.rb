require 'rails_helper'

RSpec.describe "Farmacia", type: :request do
  describe "GET /farmacia" do
    it "works! (now write some real specs)" do
      get farmacia_path
      expect(response).to have_http_status(200)
    end
  end
end
