require 'rails_helper'

RSpec.describe "client_form_types/show", type: :view do
  before(:each) do
    @client_form_type = assign(:client_form_type, ClientFormType.create!(
      name: "Name",
      description: "MyText",
      is_activ: false,
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
  end
end
