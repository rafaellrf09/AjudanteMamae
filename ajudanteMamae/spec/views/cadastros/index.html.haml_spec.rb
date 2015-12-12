require 'rails_helper'

RSpec.describe "cadastros/index", type: :view do
  before(:each) do
    assign(:cadastros, [
      Cadastro.create!(
        :usuario => "Usuario",
        :senha => "Senha"
      ),
      Cadastro.create!(
        :usuario => "Usuario",
        :senha => "Senha"
      )
    ])
  end

  it "renders a list of cadastros" do
    render
    assert_select "tr>td", :text => "Usuario".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
  end
end
