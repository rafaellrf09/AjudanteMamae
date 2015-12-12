require 'rails_helper'

RSpec.describe "dieta/new", type: :view do
  before(:each) do
    assign(:dietum, Dietum.new(
      :nome => "MyString",
      :bebe => nil
    ))
  end

  it "renders new dietum form" do
    render

    assert_select "form[action=?][method=?]", dieta_path, "post" do

      assert_select "input#dietum_nome[name=?]", "dietum[nome]"

      assert_select "input#dietum_bebe_id[name=?]", "dietum[bebe_id]"
    end
  end
end
