require 'rails_helper'

RSpec.describe "client_forms/index", type: :view do
  before(:each) do
    assign(:client_forms, [
      ClientForm.create!(
        name: "Name",
        total_price: "9.99",
        status: "Status",
        is_payed: false,
        client_form_type_id: 2,
        properties: "MyText"
      ),
      ClientForm.create!(
        name: "Name",
        total_price: "9.99",
        status: "Status",
        is_payed: false,
        client_form_type_id: 2,
        properties: "MyText"
      )
    ])
  end

  it "renders a list of client_forms" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
