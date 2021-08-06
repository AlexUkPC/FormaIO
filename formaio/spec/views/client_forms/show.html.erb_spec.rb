require 'rails_helper'

RSpec.describe "client_forms/show", type: :view do
  before(:each) do
    @client_form = assign(:client_form, ClientForm.create!(
      name: "Name",
      total_price: "9.99",
      status: "Status",
      is_payed: false,
      client_form_type_id: 2,
      properties: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
