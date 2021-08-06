# == Schema Information
#
# Table name: client_form_sections
#
#  id                  :bigint           not null, primary key
#  extra_price         :decimal(, )
#  is_default          :boolean
#  name                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  client_form_type_id :bigint           not null
#
# Indexes
#
#  index_client_form_sections_on_client_form_type_id  (client_form_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_form_type_id => client_form_types.id)
#
FactoryBot.define do
  factory :client_form_section do
    name { "MyString" }
    is_default { false }
    extra_price { "9.99" }
    client_form_type { nil }
  end
end
