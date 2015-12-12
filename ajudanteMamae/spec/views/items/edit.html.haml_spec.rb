require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :nome => "MyString",
      :dieta => nil
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_nome[name=?]", "item[nome]"

      assert_select "input#item_dieta_id[name=?]", "item[dieta_id]"
    end
  end
end
