# == Schema Information
#
# Table name: client_form_questions
#
#  id                     :bigint           not null, primary key
#  answer_type            :string
#  answers_are_sections   :boolean
#  info                   :text
#  is_required            :boolean
#  question               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  client_form_section_id :bigint           not null
#
# Indexes
#
#  index_client_form_questions_on_client_form_section_id  (client_form_section_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_form_section_id => client_form_sections.id)
#
class ClientFormQuestion < ApplicationRecord
  belongs_to :client_form_section
  has_many :posible_answer, class_name: "ClientFormPosibleAnswer", dependent: :destroy
  accepts_nested_attributes_for :posible_answer, reject_if: :all_blank, allow_destroy: true
end
