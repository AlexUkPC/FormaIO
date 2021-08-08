require 'rails_helper'

RSpec.describe "answer_form_types/new", type: :view do
  before(:each) do
    assign(:answer_form_type, AnswerFormType.new(
      name: "MyString",
      client_form_type: nil
    ))
  end

  it "renders new answer_form_type form" do
    render

    assert_select "form[action=?][method=?]", answer_form_types_path, "post" do

      assert_select "input[name=?]", "answer_form_type[name]"

      assert_select "input[name=?]", "answer_form_type[client_form_type_id]"
    end
  end
end
