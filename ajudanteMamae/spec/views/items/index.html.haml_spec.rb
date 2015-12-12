require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :nome => "Nome",
        :dieta => nil
      ),
      Item.create!(
        :nome => "Nome",
        :dieta => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
