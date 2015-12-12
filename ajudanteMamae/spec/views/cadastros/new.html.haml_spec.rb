require 'rails_helper'

RSpec.describe "cadastros/new", type: :view do
  before(:each) do
    assign(:cadastro, Cadastro.new(
      :usuario => "MyString",
      :senha => "MyString"
    ))
  end

  it "renders new cadastro form" do
    render

    assert_select "form[action=?][method=?]", cadastros_path, "post" do

      assert_select "input#cadastro_usuario[name=?]", "cadastro[usuario]"

      assert_select "input#cadastro_senha[name=?]", "cadastro[senha]"
    end
  end
end
