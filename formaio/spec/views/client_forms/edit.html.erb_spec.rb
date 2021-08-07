require 'rails_helper'

RSpec.describe "client_forms/edit", type: :view do
  before(:each) do
    @client_form = assign(:client_form, ClientForm.create!(
      name: "MyString",
      total_price: "9.99",
      status: "MyString",
      is_payed: false,
      client_form_type_id: 1,
      properties: "MyText"
    ))
  end

  it "renders the edit client_form form" do
    render

    assert_select "form[action=?][method=?]", client_form_path(@client_form), "post" do

      assert_select "input[name=?]", "client_form[name]"

      assert_select "input[name=?]", "client_form[total_price]"

      assert_select "input[name=?]", "client_form[status]"

      assert_select "input[name=?]", "client_form[is_payed]"

      assert_select "input[name=?]", "client_form[client_form_type_id]"

      assert_select "textarea[name=?]", "client_form[properties]"
    end
  end
end
