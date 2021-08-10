# == Schema Information
#
# Table name: answer_forms
#
#  id                  :bigint           not null, primary key
#  name                :string
#  properties          :text
#  status              :string
#  total_price         :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  answer_form_type_id :integer
#  user_id             :integer
#
FactoryBot.define do
  factory :answer_form do
    name { "MyString" }
    status { "MyString" }
    total_price { "9.99" }
    answer_form_type_id { 1 }
    properties { "MyText" }
  end
end
