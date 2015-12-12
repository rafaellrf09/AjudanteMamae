require 'rails_helper'

RSpec.describe "cadastros/edit", type: :view do
  before(:each) do
    @cadastro = assign(:cadastro, Cadastro.create!(
      :usuario => "MyString",
      :senha => "MyString"
    ))
  end

  it "renders the edit cadastro form" do
    render

    assert_select "form[action=?][method=?]", cadastro_path(@cadastro), "post" do

      assert_select "input#cadastro_usuario[name=?]", "cadastro[usuario]"

      assert_select "input#cadastro_senha[name=?]", "cadastro[senha]"
    end
  end
end
