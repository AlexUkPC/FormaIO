# == Schema Information
#
# Table name: client_form_types
#
#  id          :bigint           not null, primary key
#  description :text
#  is_activ    :boolean
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :client_form_type do
    name { "MyString" }
    description { "MyText" }
    is_activ { false }
    price { "9.99" }
  end
end
