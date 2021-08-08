# == Schema Information
#
# Table name: answer_form_posible_answers
#
#  id                   :bigint           not null, primary key
#  answer               :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  answer_form_field_id :bigint           not null
#
# Indexes
#
#  index_answer_form_posible_answers_on_answer_form_field_id  (answer_form_field_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_form_field_id => answer_form_fields.id)
#
require 'rails_helper'

RSpec.describe AnswerFormPosibleAnswer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
