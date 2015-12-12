require 'rails_helper'

RSpec.describe "Dieta", type: :request do
  describe "GET /dieta" do
    it "works! (now write some real specs)" do
      get dieta_path
      expect(response).to have_http_status(200)
    end
  end
end
