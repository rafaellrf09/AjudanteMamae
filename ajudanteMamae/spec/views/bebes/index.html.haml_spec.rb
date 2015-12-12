require 'rails_helper'

RSpec.describe "bebes/index", type: :view do
  before(:each) do
    assign(:bebes, [
      Bebe.create!(
        :nome => "Nome",
        :idade => 1
      ),
      Bebe.create!(
        :nome => "Nome",
        :idade => 1
      )
    ])
  end

  it "renders a list of bebes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
