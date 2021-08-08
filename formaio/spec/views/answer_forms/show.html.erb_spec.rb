require 'rails_helper'

RSpec.describe "answer_forms/show", type: :view do
  before(:each) do
    @answer_form = assign(:answer_form, AnswerForm.create!(
      name: "Name",
      status: "Status",
      total_price: "9.99",
      answer_form_type_id: 2,
      properties: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
