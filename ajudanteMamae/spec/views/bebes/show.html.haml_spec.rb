require 'rails_helper'

RSpec.describe "bebes/show", type: :view do
  before(:each) do
    @bebe = assign(:bebe, Bebe.create!(
      :nome => "Nome",
      :idade => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
  end
end
