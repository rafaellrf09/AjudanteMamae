require 'rails_helper'

RSpec.describe "Bebes", type: :request do
  describe "GET /bebes" do
    it "works! (now write some real specs)" do
      get bebes_path
      expect(response).to have_http_status(200)
    end
  end
end
