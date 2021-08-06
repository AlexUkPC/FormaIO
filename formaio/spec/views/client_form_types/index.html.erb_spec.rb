require 'rails_helper'

RSpec.describe "client_form_types/index", type: :view do
  before(:each) do
    assign(:client_form_types, [
      ClientFormType.create!(
        name: "Name",
        description: "MyText",
        is_activ: false,
        price: "9.99"
      ),
      ClientFormType.create!(
        name: "Name",
        description: "MyText",
        is_activ: false,
        price: "9.99"
      )
    ])
  end

  it "renders a list of client_form_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
