require 'rails_helper'

RSpec.describe "answer_form_types/edit", type: :view do
  before(:each) do
    @answer_form_type = assign(:answer_form_type, AnswerFormType.create!(
      name: "MyString",
      client_form_type: nil
    ))
  end

  it "renders the edit answer_form_type form" do
    render

    assert_select "form[action=?][method=?]", answer_form_type_path(@answer_form_type), "post" do

      assert_select "input[name=?]", "answer_form_type[name]"

      assert_select "input[name=?]", "answer_form_type[client_form_type_id]"
    end
  end
end
