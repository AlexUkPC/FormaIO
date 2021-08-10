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
class ClientForm < ApplicationRecord
  belongs_to :client_form_type
	serialize :properties, Hash
  has_rich_text :preform_term_and_conditions
end
