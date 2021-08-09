require 'rails_helper'

RSpec.describe "client_form_categories/show", type: :view do
  before(:each) do
    @client_form_category = assign(:client_form_category, ClientFormCategory.create!(
      name: "Name",
      description: "MyText",
      icon: "Icon",
      color: "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/Color/)
  end
end
