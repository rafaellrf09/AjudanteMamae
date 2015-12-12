require 'rails_helper'

RSpec.describe "cadastros/show", type: :view do
  before(:each) do
    @cadastro = assign(:cadastro, Cadastro.create!(
      :usuario => "Usuario",
      :senha => "Senha"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Usuario/)
    expect(rendered).to match(/Senha/)
  end
end
