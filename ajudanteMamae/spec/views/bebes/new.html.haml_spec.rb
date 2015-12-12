require 'rails_helper'

RSpec.describe "bebes/new", type: :view do
  before(:each) do
    assign(:bebe, Bebe.new(
      :nome => "MyString",
      :idade => 1
    ))
  end

  it "renders new bebe form" do
    render

    assert_select "form[action=?][method=?]", bebes_path, "post" do

      assert_select "input#bebe_nome[name=?]", "bebe[nome]"

      assert_select "input#bebe_idade[name=?]", "bebe[idade]"
    end
  end
end
