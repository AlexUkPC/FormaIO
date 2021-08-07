require 'rails_helper'

RSpec.describe "client_forms/new", type: :view do
  before(:each) do
    assign(:client_form, ClientForm.new(
      name: "MyString",
      total_price: "9.99",
      status: "MyString",
      is_payed: false,
      client_form_type_id: 1,
      properties: "MyText"
    ))
  end

  it "renders new client_form form" do
    render

    assert_select "form[action=?][method=?]", client_forms_path, "post" do

      assert_select "input[name=?]", "client_form[name]"

      assert_select "input[name=?]", "client_form[total_price]"

      assert_select "input[name=?]", "client_form[status]"

      assert_select "input[name=?]", "client_form[is_payed]"

      assert_select "input[name=?]", "client_form[client_form_type_id]"

      assert_select "textarea[name=?]", "client_form[properties]"
    end
  end
end
