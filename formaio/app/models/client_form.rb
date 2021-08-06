# == Schema Information
#
# Table name: client_forms
#
#  id                  :bigint           not null, primary key
#  is_payed            :boolean
#  name                :string
#  properties          :text
#  status              :string
#  total_price         :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  client_form_type_id :integer
#
class ClientForm < ApplicationRecord
  belongs_to :client_form_type
	serialize :properties, Hash
end
