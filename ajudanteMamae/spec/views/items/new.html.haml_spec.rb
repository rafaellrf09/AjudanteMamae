require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :nome => "MyString",
      :dieta => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_nome[name=?]", "item[nome]"

      assert_select "input#item_dieta_id[name=?]", "item[dieta_id]"
    end
  end
end
