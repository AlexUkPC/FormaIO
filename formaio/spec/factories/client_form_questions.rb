# == Schema Information
#
# Table name: client_form_questions
#
#  id                     :bigint           not null, primary key
#  answer_type            :string
#  answers_are_sections   :boolean
#  info                   :text
#  is_required            :boolean
#  question               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  client_form_section_id :bigint           not null
#
# Indexes
#
#  index_client_form_questions_on_client_form_section_id  (client_form_section_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_form_section_id => client_form_sections.id)
#
FactoryBot.define do
  factory :client_form_question do
    question { "MyString" }
    answer_type { "MyString" }
    answers_are_sections { false }
    info { "MyText" }
    is_required { false }
    client_form_section { nil }
  end
end
