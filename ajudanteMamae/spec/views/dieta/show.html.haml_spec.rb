require 'rails_helper'

RSpec.describe "dieta/show", type: :view do
  before(:each) do
    @dietum = assign(:dietum, Dietum.create!(
      :nome => "Nome",
      :bebe => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(//)
  end
end
