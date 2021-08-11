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
#  client_form_id      :integer
#  user_id             :integer
#
class AnswerForm < ApplicationRecord
  belongs_to :user
  belongs_to :answer_form_type
	serialize :properties, Hash
  belongs_to :client_form
end
