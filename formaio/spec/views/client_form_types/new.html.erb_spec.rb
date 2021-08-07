require 'rails_helper'

RSpec.describe "client_form_types/new", type: :view do
  before(:each) do
    assign(:client_form_type, ClientFormType.new(
      name: "MyString",
      description: "MyText",
      is_activ: false,
      price: "9.99"
    ))
  end

  it "renders new client_form_type form" do
    render

    assert_select "form[action=?][method=?]", client_form_types_path, "post" do

      assert_select "input[name=?]", "client_form_type[name]"

      assert_select "textarea[name=?]", "client_form_type[description]"

      assert_select "input[name=?]", "client_form_type[is_activ]"

      assert_select "input[name=?]", "client_form_type[price]"
    end
  end
end
