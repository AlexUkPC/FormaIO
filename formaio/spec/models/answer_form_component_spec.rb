# == Schema Information
#
# Table name: answer_form_components
#
#  id                  :bigint           not null, primary key
#  is_text_area        :boolean
#  name                :string
#  properties          :text
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
require 'rails_helper'

RSpec.describe AnswerFormComponent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
