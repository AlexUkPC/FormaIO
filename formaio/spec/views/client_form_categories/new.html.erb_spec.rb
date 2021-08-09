require 'rails_helper'

RSpec.describe "client_form_categories/new", type: :view do
  before(:each) do
    assign(:client_form_category, ClientFormCategory.new(
      name: "MyString",
      description: "MyText",
      icon: "MyString",
      color: "MyString"
    ))
  end

  it "renders new client_form_category form" do
    render

    assert_select "form[action=?][method=?]", client_form_categories_path, "post" do

      assert_select "input[name=?]", "client_form_category[name]"

      assert_select "textarea[name=?]", "client_form_category[description]"

      assert_select "input[name=?]", "client_form_category[icon]"

      assert_select "input[name=?]", "client_form_category[color]"
    end
  end
end
