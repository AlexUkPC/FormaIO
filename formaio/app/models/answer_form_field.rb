# == Schema Information
#
# Table name: answer_form_fields
#
#  id                       :bigint           not null, primary key
#  field_type               :string
#  name                     :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  answer_form_component_id :bigint           not null
#
# Indexes
#
#  index_answer_form_fields_on_answer_form_component_id  (answer_form_component_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_form_component_id => answer_form_components.id)
#
class AnswerFormField < ApplicationRecord
  belongs_to :answer_form_component
  has_many :posible_answer, class_name: "AnswerFormPosibleAnswer", dependent: :destroy
  accepts_nested_attributes_for :posible_answer, reject_if: :all_blank, allow_destroy: true
end
