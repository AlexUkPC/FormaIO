# == Schema Information
#
# Table name: answer_form_posible_answers
#
#  id                   :bigint           not null, primary key
#  answer               :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  answer_form_field_id :bigint           not null
#
# Indexes
#
#  index_answer_form_posible_answers_on_answer_form_field_id  (answer_form_field_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_form_field_id => answer_form_fields.id)
#
FactoryBot.define do
  factory :answer_form_posible_answer do
    answer { "MyString" }
    answer_form_field { nil }
  end
end
