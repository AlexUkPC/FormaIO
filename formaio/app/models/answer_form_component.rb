# == Schema Information
#
# Table name: answer_form_components
#
#  id                  :bigint           not null, primary key
#  is_text_area        :boolean
#  name                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  answer_form_type_id :bigint           not null
#
# Indexes
#
#  index_answer_form_components_on_answer_form_type_id  (answer_form_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_form_type_id => answer_form_types.id)
#
class AnswerFormComponent < ApplicationRecord
  belongs_to :answer_form_type
  has_many :fields, class_name: "AnswerFormField", dependent: :destroy
  accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true
  serialize :properties, Hash
end
