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
require 'rails_helper'

RSpec.describe AnswerFormField, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
