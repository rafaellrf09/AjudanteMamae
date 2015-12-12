require 'rails_helper'

RSpec.describe "farmacia/edit", type: :view do
  before(:each) do
    @farmacium = assign(:farmacium, Farmacium.create!(
      :nome => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :elevacao => "9.99"
    ))
  end

  it "renders the edit farmacium form" do
    render

    assert_select "form[action=?][method=?]", farmacium_path(@farmacium), "post" do

      assert_select "input#farmacium_nome[name=?]", "farmacium[nome]"

      assert_select "input#farmacium_latitude[name=?]", "farmacium[latitude]"

      assert_select "input#farmacium_longitude[name=?]", "farmacium[longitude]"

      assert_select "input#farmacium_elevacao[name=?]", "farmacium[elevacao]"
    end
  end
end
