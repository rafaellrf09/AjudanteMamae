require 'rails_helper'

RSpec.describe "dieta/edit", type: :view do
  before(:each) do
    @dietum = assign(:dietum, Dietum.create!(
      :nome => "MyString",
      :bebe => nil
    ))
  end

  it "renders the edit dietum form" do
    render

    assert_select "form[action=?][method=?]", dietum_path(@dietum), "post" do

      assert_select "input#dietum_nome[name=?]", "dietum[nome]"

      assert_select "input#dietum_bebe_id[name=?]", "dietum[bebe_id]"
    end
  end
end
