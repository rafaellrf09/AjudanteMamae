require 'rails_helper'

RSpec.describe "farmacia/new", type: :view do
  before(:each) do
    assign(:farmacium, Farmacium.new(
      :nome => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :elevacao => "9.99"
    ))
  end

  it "renders new farmacium form" do
    render

    assert_select "form[action=?][method=?]", farmacia_path, "post" do

      assert_select "input#farmacium_nome[name=?]", "farmacium[nome]"

      assert_select "input#farmacium_latitude[name=?]", "farmacium[latitude]"

      assert_select "input#farmacium_longitude[name=?]", "farmacium[longitude]"

      assert_select "input#farmacium_elevacao[name=?]", "farmacium[elevacao]"
    end
  end
end
