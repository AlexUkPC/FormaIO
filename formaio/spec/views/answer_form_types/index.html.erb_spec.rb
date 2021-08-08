require 'rails_helper'

RSpec.describe "answer_form_types/index", type: :view do
  before(:each) do
    assign(:answer_form_types, [
      AnswerFormType.create!(
        name: "Name",
        client_form_type: nil
      ),
      AnswerFormType.create!(
        name: "Name",
        client_form_type: nil
      )
    ])
  end

  it "renders a list of answer_form_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
