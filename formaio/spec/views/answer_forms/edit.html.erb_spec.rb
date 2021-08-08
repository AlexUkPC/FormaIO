require 'rails_helper'

RSpec.describe "answer_forms/edit", type: :view do
  before(:each) do
    @answer_form = assign(:answer_form, AnswerForm.create!(
      name: "MyString",
      status: "MyString",
      total_price: "9.99",
      answer_form_type_id: 1,
      properties: "MyText"
    ))
  end

  it "renders the edit answer_form form" do
    render

    assert_select "form[action=?][method=?]", answer_form_path(@answer_form), "post" do

      assert_select "input[name=?]", "answer_form[name]"

      assert_select "input[name=?]", "answer_form[status]"

      assert_select "input[name=?]", "answer_form[total_price]"

      assert_select "input[name=?]", "answer_form[answer_form_type_id]"

      assert_select "textarea[name=?]", "answer_form[properties]"
    end
  end
end
