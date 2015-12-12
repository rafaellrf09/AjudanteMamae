require 'rails_helper'

RSpec.describe "bebes/edit", type: :view do
  before(:each) do
    @bebe = assign(:bebe, Bebe.create!(
      :nome => "MyString",
      :idade => 1
    ))
  end

  it "renders the edit bebe form" do
    render

    assert_select "form[action=?][method=?]", bebe_path(@bebe), "post" do

      assert_select "input#bebe_nome[name=?]", "bebe[nome]"

      assert_select "input#bebe_idade[name=?]", "bebe[idade]"
    end
  end
end
