require 'rails_helper'

RSpec.describe "needs/index", type: :view do
  before(:each) do
    assign(:needs, [
      Need.create!(
        :title => "Title",
        :description => "MyText",
        :amount_requested => "9.99",
        :amount_donated => "9.99"
      ),
      Need.create!(
        :title => "Title",
        :description => "MyText",
        :amount_requested => "9.99",
        :amount_donated => "9.99"
      )
    ])
  end

  it "renders a list of needs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
