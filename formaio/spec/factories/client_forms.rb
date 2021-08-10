# == Schema Information
#
# Table name: client_forms
#
#  id                   :bigint           not null, primary key
#  agee_preform_t_and_c :boolean
#  is_payed             :boolean
#  name                 :string
#  properties           :text
#  status               :string
#  total_price          :decimal(, )
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  client_form_type_id  :integer
#
FactoryBot.define do
  factory :client_form do
    name { "MyString" }
    total_price { "9.99" }
    status { "MyString" }
    is_payed { false }
    client_form_type_id { 1 }
    properties { "MyText" }
  end
end
