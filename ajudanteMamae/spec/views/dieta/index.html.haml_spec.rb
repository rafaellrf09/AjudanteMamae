require 'rails_helper'

RSpec.describe "dieta/index", type: :view do
  before(:each) do
    assign(:dieta, [
      Dietum.create!(
        :nome => "Nome",
        :bebe => nil
      ),
      Dietum.create!(
        :nome => "Nome",
        :bebe => nil
      )
    ])
  end

  it "renders a list of dieta" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
