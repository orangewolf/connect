require 'rails_helper'

RSpec.describe "needs/edit", type: :view do
  before(:each) do
    @need = assign(:need, Need.create!(
      :title => "MyString",
      :description => "MyText",
      :amount_requested => "9.99",
      :amount_donated => "9.99"
    ))
  end

  it "renders the edit need form" do
    render

    assert_select "form[action=?][method=?]", need_path(@need), "post" do

      assert_select "input#need_title[name=?]", "need[title]"

      assert_select "textarea#need_description[name=?]", "need[description]"

      assert_select "input#need_amount_requested[name=?]", "need[amount_requested]"

      assert_select "input#need_amount_donated[name=?]", "need[amount_donated]"
    end
  end
end
