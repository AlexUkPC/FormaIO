# == Schema Information
#
# Table name: client_form_sections
#
#  id                  :bigint           not null, primary key
#  extra_price         :decimal(, )
#  is_default          :boolean
#  name                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  client_form_type_id :bigint           not null
#
# Indexes
#
#  index_client_form_sections_on_client_form_type_id  (client_form_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_form_type_id => client_form_types.id)
#
require 'rails_helper'

RSpec.describe ClientFormSection, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
