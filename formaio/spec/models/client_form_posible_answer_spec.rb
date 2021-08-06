# == Schema Information
#
# Table name: client_form_posible_answers
#
#  id                      :bigint           not null, primary key
#  answer                  :string
#  section                 :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  client_form_question_id :bigint           not null
#
# Indexes
#
#  index_client_form_posible_answers_on_client_form_question_id  (client_form_question_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_form_question_id => client_form_questions.id)
#
require 'rails_helper'

RSpec.describe ClientFormPosibleAnswer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
