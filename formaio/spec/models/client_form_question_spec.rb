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
require 'rails_helper'

RSpec.describe ClientFormQuestion, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
