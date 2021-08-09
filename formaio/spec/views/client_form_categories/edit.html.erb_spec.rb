require 'rails_helper'

RSpec.describe "client_form_categories/edit", type: :view do
  before(:each) do
    @client_form_category = assign(:client_form_category, ClientFormCategory.create!(
      name: "MyString",
      description: "MyText",
      icon: "MyString",
      color: "MyString"
    ))
  end

  it "renders the edit client_form_category form" do
    render

    assert_select "form[action=?][method=?]", client_form_category_path(@client_form_category), "post" do

      assert_select "input[name=?]", "client_form_category[name]"

      assert_select "textarea[name=?]", "client_form_category[description]"

      assert_select "input[name=?]", "client_form_category[icon]"

      assert_select "input[name=?]", "client_form_category[color]"
    end
  end
end
