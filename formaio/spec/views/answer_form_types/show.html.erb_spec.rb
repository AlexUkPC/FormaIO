require 'rails_helper'

RSpec.describe "answer_form_types/show", type: :view do
  before(:each) do
    @answer_form_type = assign(:answer_form_type, AnswerFormType.create!(
      name: "Name",
      client_form_type: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
