require 'rails_helper'

RSpec.describe "farmacia/show", type: :view do
  before(:each) do
    @farmacium = assign(:farmacium, Farmacium.create!(
      :nome => "Nome",
      :latitude => "9.99",
      :longitude => "9.99",
      :elevacao => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
