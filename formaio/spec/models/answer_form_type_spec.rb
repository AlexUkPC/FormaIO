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
require 'rails_helper'

RSpec.describe AnswerFormType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
