require 'rails_helper'

RSpec.describe "answer_forms/index", type: :view do
  before(:each) do
    assign(:answer_forms, [
      AnswerForm.create!(
        name: "Name",
        status: "Status",
        total_price: "9.99",
        answer_form_type_id: 2,
        properties: "MyText"
      ),
      AnswerForm.create!(
        name: "Name",
        status: "Status",
        total_price: "9.99",
        answer_form_type_id: 2,
        properties: "MyText"
      )
    ])
  end

  it "renders a list of answer_forms" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
