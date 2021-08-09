require 'rails_helper'

RSpec.describe "client_form_categories/index", type: :view do
  before(:each) do
    assign(:client_form_categories, [
      ClientFormCategory.create!(
        name: "Name",
        description: "MyText",
        icon: "Icon",
        color: "Color"
      ),
      ClientFormCategory.create!(
        name: "Name",
        description: "MyText",
        icon: "Icon",
        color: "Color"
      )
    ])
  end

  it "renders a list of client_form_categories" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Icon".to_s, count: 2
    assert_select "tr>td", text: "Color".to_s, count: 2
  end
end
