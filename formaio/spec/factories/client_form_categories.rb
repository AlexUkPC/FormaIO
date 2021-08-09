# == Schema Information
#
# Table name: client_form_categories
#
#  id          :bigint           not null, primary key
#  color       :string
#  description :text
#  icon        :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :client_form_category do
    name { "MyString" }
    description { "MyText" }
    icon { "MyString" }
    color { "MyString" }
  end
end
