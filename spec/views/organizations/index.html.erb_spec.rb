require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        :title => "Title",
        :tagline => "Tagline"
      ),
      Organization.create!(
        :title => "Title",
        :tagline => "Tagline"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Tagline".to_s, :count => 2
  end
end
