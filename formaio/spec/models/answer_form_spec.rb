# == Schema Information
#
# Table name: answer_forms
#
#  id                  :bigint           not null, primary key
#  name                :string
#  properties          :text
#  status              :string
#  total_price         :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  answer_form_type_id :integer
#
require 'rails_helper'

RSpec.describe AnswerForm, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
