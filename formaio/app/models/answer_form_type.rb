# == Schema Information
#
# Table name: answer_form_types
#
#  id                  :bigint           not null, primary key
#  name                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  client_form_type_id :bigint           not null
#
# Indexes
#
#  index_answer_form_types_on_client_form_type_id  (client_form_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_form_type_id => client_form_types.id)
#
class AnswerFormType < ApplicationRecord
  belongs_to :client_form_type
  has_many :components, class_name: "AnswerFormComponent", dependent: :destroy
  accepts_nested_attributes_for :components, reject_if: :all_blank, allow_destroy: true
  has_many :answer_form
end
