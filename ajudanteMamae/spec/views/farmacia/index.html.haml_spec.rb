require 'rails_helper'

RSpec.describe "farmacia/index", type: :view do
  before(:each) do
    assign(:farmacia, [
      Farmacium.create!(
        :nome => "Nome",
        :latitude => "9.99",
        :longitude => "9.99",
        :elevacao => "9.99"
      ),
      Farmacium.create!(
        :nome => "Nome",
        :latitude => "9.99",
        :longitude => "9.99",
        :elevacao => "9.99"
      )
    ])
  end

  it "renders a list of farmacia" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
