require 'rails_helper'

RSpec.describe "needs/show", type: :view do
  before(:each) do
    @need = assign(:need, Need.create!(
      :title => "Title",
      :description => "MyText",
      :amount_requested => "9.99",
      :amount_donated => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
