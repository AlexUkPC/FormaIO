require 'rails_helper'

RSpec.describe "answer_forms/new", type: :view do
  before(:each) do
    assign(:answer_form, AnswerForm.new(
      name: "MyString",
      status: "MyString",
      total_price: "9.99",
      answer_form_type_id: 1,
      properties: "MyText"
    ))
  end

  it "renders new answer_form form" do
    render

    assert_select "form[action=?][method=?]", answer_forms_path, "post" do

      assert_select "input[name=?]", "answer_form[name]"

      assert_select "input[name=?]", "answer_form[status]"

      assert_select "input[name=?]", "answer_form[total_price]"

      assert_select "input[name=?]", "answer_form[answer_form_type_id]"

      assert_select "textarea[name=?]", "answer_form[properties]"
    end
  end
end
