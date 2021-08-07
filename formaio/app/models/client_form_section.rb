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
class ClientFormSection < ApplicationRecord
  belongs_to :client_form_type
  has_many :questions, class_name: "ClientFormQuestion", dependent: :destroy
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
end
